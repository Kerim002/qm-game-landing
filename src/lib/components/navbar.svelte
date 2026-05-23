<script lang="ts">
    import { page } from "$app/stores";
    let menuOpen = $state(false);
    function closeMenu() {
        menuOpen = false;
    }
    const isHome = $derived($page.url.pathname === "/");
</script>

<nav class="web-bg" aria-label="Main navigation">
    <div class="nav-inner container">
        <a href="/" class="nav-logo">
            <span class="logo-accent">Q</span>uiz<span class="logo-accent"
                >M</span
            >asters
        </a>
        <ul class="nav-links" role="list">
            <li>
                <a
                    href={isHome ? "#features" : "/#features"}
                    onclick={closeMenu}
                >
                    Features
                </a>
            </li>
            <li>
                <a
                    href={isHome ? "#characters" : "/#characters"}
                    onclick={closeMenu}
                >
                    Characters
                </a>
            </li>
            <li>
                <a href={isHome ? "#how" : "/#how"} onclick={closeMenu}>
                    How to Play
                </a>
            </li>
            <li>
                <a href={isHome ? "#faq" : "/#faq"} onclick={closeMenu}>
                    FAQ
                </a>
            </li>
        </ul>
        <a href="#features" class="btn btn-white nav-btn">
            <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="lucide lucide-play-icon lucide-play"
                ><path
                    d="M5 5a2 2 0 0 1 3.008-1.728l11.997 6.998a2 2 0 0 1 .003 3.458l-12 7A2 2 0 0 1 5 19z"
                /></svg
            >
            Play Now
        </a>
        <button
            class="hamburger"
            aria-label={menuOpen ? "Close menu" : "Open menu"}
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
        <div
            class="mobile-menu"
            id="mobile-menu"
            role="dialog"
            aria-label="Navigation menu"
        >
            <ul role="list">
                <li><a href={isHome ? "#features" : "/#features"} onclick={closeMenu}>Features</a></li>
                <li>
                    <a href={isHome ? "#characters" : "/#characters"} onclick={closeMenu}>Characters</a>
                </li>
                <li><a href={isHome ? "#how" : "/#how"} onclick={closeMenu}>How to Play</a></li>
                <li><a  href={isHome ? "#faq" : "/#faq"} onclick={closeMenu}>FAQ</a></li>
            </ul>
            <a
                href="#features"
                class="btn btn-white"
                style="width:100%;justify-content:center;"
                onclick={closeMenu}
            >
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    class="lucide lucide-play-icon lucide-play"
                    ><path
                        d="M5 5a2 2 0 0 1 3.008-1.728l11.997 6.998a2 2 0 0 1 .003 3.458l-12 7A2 2 0 0 1 5 19z"
                    /></svg
                >
                Play Now
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
        background: rgba(255, 255, 255, 0.14);
        border: 1.5px solid rgba(255, 255, 255, 0.32);
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
        transition:
            transform 0.2s ease,
            opacity 0.2s ease;
    }

    /* ── MOBILE MENU ── */
    .mobile-menu {
        background: var(--blue-dark);
        padding: 16px 24px 24px;
        border-top: 1px solid rgba(255, 255, 255, 0.14);
    }
    .mobile-menu ul {
        list-style: none;
        margin-bottom: 16px;
    }
    .mobile-menu li + li {
        border-top: 1px solid rgba(255, 255, 255, 0.1);
    }
    .mobile-menu a {
        display: block;
        color: rgba(255, 255, 255, 0.92);
        text-decoration: none;
        font-weight: 700;
        font-size: 1rem;
        padding: 14px 0;
        transition: color 0.18s;
    }
    .mobile-menu .btn-white {
        /* background: #fff; */
        color: var(
            --blue-dark
        ); /* or whatever dark color you want the text to be */
    }

    /* Optional: change the hover state so it doesn't turn yellow and disappear */
    .mobile-menu .btn-white:hover {
        /* background: rgba(255, 255, 255, 0.9); */
        color: var(--blue-dark);
    }
    .mobile-menu a:hover {
        color: var(--yellow);
    }

    .mobile-menu .btn {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        font-family: "Nunito", sans-serif;
        font-weight: 800;
        font-size: 1rem;
        border: none;
        cursor: pointer;
        border-radius: 50px;
        text-decoration: none;
        transition: all 0.22s cubic-bezier(0.34, 1.56, 0.64, 1);
        white-space: nowrap;
        line-height: 1;
    }
    .mobile-menu .btn-white {
        background: #fff;
        color: var(--blue);
        padding: 14px 36px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.12);
    }
    .mobile-menu .btn-white:hover {
        background: var(--yellow);
        color: var(--dark);
        transform: translateY(-3px) scale(1.03);
        box-shadow: 0 10px 28px rgba(0, 0, 0, 0.16);
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
