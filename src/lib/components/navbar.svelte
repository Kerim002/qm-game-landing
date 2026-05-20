<script>
    let menuOpen = $state(false);
    function closeMenu() { menuOpen = false; }
</script>

<nav class="web-bg" aria-label="Main navigation">
    <div class="nav-inner container">
        <a href="/" class="nav-logo">
            <span class="logo-accent">Q</span>uiz<span class="logo-accent">M</span>asters
        </a>
        <ul class="nav-links" role="list">
            <li><a href="#features" onclick={closeMenu}>Features</a></li>
            <li><a href="#characters" onclick={closeMenu}>Characters</a></li>
            <li><a href="#how" onclick={closeMenu}>How to Play</a></li>
            <li><a href="#faq" onclick={closeMenu}>FAQ</a></li>
        </ul>
        <a href="#features" class="btn btn-white nav-btn">
            <svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" aria-hidden="true"><polygon points="2,1 11,6 2,11"/></svg>
            Play Now
        </a>
        <button
            class="hamburger"
            aria-label={menuOpen ? 'Close menu' : 'Open menu'}
            aria-expanded={menuOpen}
            aria-controls="mobile-menu"
            onclick={() => (menuOpen = !menuOpen)}
        >
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </button>
    </div>

    {#if menuOpen}
        <div class="mobile-menu" id="mobile-menu" role="dialog" aria-label="Navigation menu">
            <ul role="list">
                <li><a href="#features" onclick={closeMenu}>Features</a></li>
                <li><a href="#characters" onclick={closeMenu}>Characters</a></li>
                <li><a href="#how" onclick={closeMenu}>How to Play</a></li>
                <li><a href="#faq" onclick={closeMenu}>FAQ</a></li>
            </ul>
            <a href="#features" class="btn btn-white" style="width:100%;justify-content:center;" onclick={closeMenu}>
                <svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" aria-hidden="true"><polygon points="2,1 11,6 2,11"/></svg>
                Play Now — Free
            </a>
        </div>
    {/if}
</nav>

<style>
    nav {
        background: var(--blue);
        position: sticky;
        top: 0;
        z-index: 200;
        box-shadow: 0 2px 20px rgba(56, 165, 255, 0.32);
    }
    .nav-inner {
        height: 68px;
        display: flex;
        align-items: center;
        gap: 32px;
    }
    .nav-logo {
        font-family: "Fredoka One", cursive;
        font-size: 1.55rem;
        color: #fff;
        text-decoration: none;
        flex-shrink: 0;
    }
    .logo-accent {
        color: var(--yellow);
    }
    .nav-links {
        display: flex;
        gap: 24px;
        list-style: none;
        flex: 1;
    }
    .nav-links a {
        color: rgba(255, 255, 255, 0.92);
        text-decoration: none;
        font-weight: 700;
        font-size: 0.92rem;
        transition: color 0.18s;
    }
    .nav-links a:hover {
        color: #fff;
    }
    .nav-btn {
        padding: 10px 24px;
        font-size: 0.9rem;
    }

    /* ── HAMBURGER ── */
    .hamburger {
        display: none;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 5px;
        width: 40px;
        height: 40px;
        background: rgba(255,255,255,0.14);
        border: 1.5px solid rgba(255,255,255,0.32);
        border-radius: 8px;
        cursor: pointer;
        margin-left: auto;
        flex-shrink: 0;
    }
    .bar {
        display: block;
        width: 20px;
        height: 2px;
        background: #fff;
        border-radius: 2px;
        transition: transform 0.2s ease, opacity 0.2s ease;
    }

    /* ── MOBILE MENU ── */
    .mobile-menu {
        background: var(--blue-dark);
        padding: 16px 24px 24px;
        border-top: 1px solid rgba(255,255,255,0.14);
    }
    .mobile-menu ul {
        list-style: none;
        margin-bottom: 16px;
    }
    .mobile-menu li + li {
        border-top: 1px solid rgba(255,255,255,0.1);
    }
    .mobile-menu a {
        display: block;
        color: rgba(255,255,255,0.92);
        text-decoration: none;
        font-weight: 700;
        font-size: 1rem;
        padding: 14px 0;
        transition: color 0.18s;
    }
    .mobile-menu a:hover {
        color: var(--yellow);
    }

    @media (max-width: 768px) {
        .nav-links,
        .nav-btn {
            display: none;
        }
        .hamburger {
            display: flex;
        }
    }
</style>
