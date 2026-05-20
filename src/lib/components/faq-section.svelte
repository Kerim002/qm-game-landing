<script>
    let openFaq = $state(null);

    function toggleFaq(i) {
        openFaq = openFaq === i ? null : i;
    }

    const faqs = [
        {
            q: "What is Quiz Masters?",
            a: "Quiz Masters is a free real-time PVP trivia game where you battle opponents on a tactical board, answer questions to move your character, and use power-ups to dominate.",
        },
        {
            q: "Is it free to play?",
            a: "Yes! The core game is completely free on web, iOS, and Android. Cosmetic items can be unlocked using in-game coins you earn by playing.",
        },
        {
            q: "Do I need to create an account?",
            a: "No login required to play as a guest. Create a free account to save progress, trophies, and characters across all your devices.",
        },
        {
            q: "How do power-ups work?",
            a: "Earn coins by winning matches, then spend them in the in-game shop. Clue Flower removes 2 wrong answers, Teleport moves you to any captured tile, and Heal restores 20 HP.",
        },
        {
            q: "Is there a mobile app?",
            a: "Yes! Quiz Masters is on iOS (App Store) and Android (Google Play). Download for free and battle anywhere.",
        },
        {
            q: "How does the ranking system work?",
            a: "Your ELO score updates after every match. Win against stronger opponents for a bigger boost. Climb the trophy ladder to prove you're the ultimate Quiz Master.",
        },
    ];
</script>

<section class="faq-section" id="faq">
    <div class="container faq-container">
        <div class="section-head reveal" style="text-align:center; margin-bottom:48px;">
            <span class="eyebrow">FAQ</span>
            <h2 class="section-title">Got <span>Questions?</span></h2>
            <p class="section-sub">Everything you need to know before playing</p>
        </div>
        <div class="faq-list reveal">
            {#each faqs as faq, i}
                {@const isOpen = openFaq === i}
                <div class="faq-item" class:open={isOpen}>
                    <button
                        class="faq-q"
                        onclick={() => toggleFaq(i)}
                        aria-expanded={isOpen}
                        aria-controls="faq-answer-{i}"
                    >
                        <span>{faq.q}</span>
                        <span class="faq-icon" class:flipped={isOpen} aria-hidden="true">▼</span>
                    </button>
                    <div
                        id="faq-answer-{i}"
                        class="faq-a"
                        class:faq-a-open={isOpen}
                        role="region"
                        aria-label={faq.q}
                    >
                        <p>{faq.a}</p>
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>

<style>
    .faq-section {
        padding: 96px 0;
        background: #fff;
    }
    .faq-container {
        max-width: 780px;
    }
    .faq-list {
        border-top: 2px solid var(--blue-bg);
    }
    .faq-item {
        border-bottom: 2px solid var(--blue-bg);
    }
    .faq-q {
        width: 100%;
        background: none;
        border: none;
        padding: 22px 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 16px;
        cursor: pointer;
        font-family: "Fredoka One", cursive;
        font-size: 1.08rem;
        color: var(--dark);
        text-align: left;
        transition: color 0.18s;
    }
    .faq-q:hover {
        color: var(--blue);
    }
    .faq-icon {
        color: var(--blue);
        font-size: 0.82rem;
        flex-shrink: 0;
        transition: transform 0.28s ease;
        display: inline-block;
    }
    .faq-icon.flipped {
        transform: rotate(180deg);
    }

    /* CSS-transition accordion — avoids abrupt mount/unmount */
    .faq-a {
        display: grid;
        grid-template-rows: 0fr;
        transition: grid-template-rows 0.3s ease;
        overflow: hidden;
    }
    .faq-a-open {
        grid-template-rows: 1fr;
    }
    .faq-a p {
        /* inner wrapper needed for grid-template-rows trick */
        overflow: hidden;
        color: var(--muted);
        font-weight: 600;
        font-size: 0.96rem;
        line-height: 1.75;
        padding-bottom: 20px;
    }
</style>
