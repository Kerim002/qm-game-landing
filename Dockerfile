# --- Stage 1: Dependency Installation ---
FROM node:22-alpine AS deps
WORKDIR /app

COPY package.json package-lock.json ./
# Clean install including devDependencies (needed to build the app)
RUN npm ci

# --- Stage 2: Application Builder ---
FROM node:22-alpine AS builder
WORKDIR /app

# Copy node_modules from deps stage and project source code
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Build the SvelteKit 5 application
RUN npm run build

# Remove development-only dependencies to minimize production image footprint
RUN npm prune --omit=dev


# --- Stage 3: Production Runtime ---
FROM node:22-alpine AS runner
WORKDIR /app

ENV NODE_ENV=production
# Default port for adapter-node is 3000
ENV PORT=3000

# Security Best Practice: Run container as a non-root user
RUN addgroup --system --gid 1001 sveltekit && \
    adduser --system --uid 1001 -G sveltekit sveltekit

# Bring over only the built assets and the pruned production node_modules
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

USER sveltekit

EXPOSE 3000

CMD ["node", "build/index.js"]