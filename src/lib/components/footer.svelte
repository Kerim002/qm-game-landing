<script lang="ts">
    import { page } from "$app/stores";

    
    const isHome = $derived($page.url.pathname === "/")
</script>

<footer>
    <div class="footer-inner container">
        <div class="footer-brand">
            <p class="footer-logo">QuizMasters</p>
            <p class="footer-copy">© 2026 Quiz Masters. All rights reserved.</p>
        </div>
        <nav class="footer-nav" aria-label="Footer navigation">
            <a href={isHome ? "#features" : "/#features"}>Features</a>
            <a href={isHome ? "#characters" : "/#characters"}>Characters</a>
            <a href={isHome ? "#how" : "/#how"}>How to Play</a>
            <a href={isHome ? "#faq" : "/#faq"}>FAQ</a>
            <a href="/privacy-policy">Privacy Policy</a>
            <a href="/terms-of-use">Terms of Use</a>
            <a href="/data-deletion">Data Deletion</a>
            <!-- <a href="/support">Support</a> -->
        </nav>
    </div>
</footer>

<style>
    footer {
        background: var(--dark);
        padding: 44px 0;
    }
    .footer-inner {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 24px;
        flex-wrap: wrap;
    }
    .footer-logo {
        font-family: 'Fredoka One', cursive;
        font-size: 1.45rem;
        color: #fff;
        margin-bottom: 5px;
    }
    .footer-copy {
        font-size: 0.8rem;
        font-weight: 600;
        /* raised from 0.42 (~3.2:1) to 0.65 (~4.6:1) to pass WCAG AA */
        color: rgba(255, 255, 255, 0.65);
    }
    .footer-nav {
        display: flex;
        gap: 20px;
        flex-wrap: wrap;
    }
    .footer-nav a {
        /* raised from 0.52 (~3.8:1) to 0.75 (~5.2:1) to pass WCAG AA */
        color: rgba(255, 255, 255, 0.75);
        text-decoration: none;
        font-size: 0.85rem;
        font-weight: 600;
        transition: color 0.18s;
    }
    .footer-nav a:hover {
        color: var(--blue-light);
    }

    @media (max-width: 640px) {
        .footer-inner {
            flex-direction: column;
            align-items: flex-start;
        }
    }
</style>
