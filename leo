<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fortnite Universe – Galería Oficial</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Rajdhani:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* =========================================
           CURSOR PERSONALIZADO
        ========================================= */
        * { cursor: none !important; box-sizing: border-box; }
        .cursor-dot {
            width: 8px; height: 8px; background: #00f0ff;
            border-radius: 50%; position: fixed; top: 0; left: 0;
            pointer-events: none; z-index: 99999;
            transform: translate(-50%, -50%);
            transition: transform 0.05s;
            box-shadow: 0 0 10px #00f0ff, 0 0 20px #00f0ff;
        }
        .cursor-ring {
            width: 32px; height: 32px;
            border: 1.5px solid rgba(0,240,255,0.5);
            border-radius: 50%; position: fixed; top: 0; left: 0;
            pointer-events: none; z-index: 99998;
            transform: translate(-50%, -50%);
            transition: transform 0.12s ease, width 0.2s, height 0.2s, border-color 0.2s;
        }
        .cursor-ring.hover { width: 48px; height: 48px; border-color: #b400ff; }

        /* =========================================
           VARIABLES GLOBALES
        ========================================= */
        :root {
            --bg-dark:      #07080f;
            --bg-card:      #0e1020;
            --bg-card-hover:#141628;
            --primary:      #00f0ff;
            --primary-glow: rgba(0,240,255,0.35);
            --accent:       #b400ff;
            --accent-glow:  rgba(180,0,255,0.35);
            --yellow:       #ffe600;
            --text-main:    #ffffff;
            --text-muted:   #7a8aa0;
            --border:       rgba(0,240,255,0.12);
            --legendary:    #d4af37;
            --epic:         #b300ff;
            --rare:         #00aeff;
            --uncommon:     #00cc66;
            --common:       #808080;
            --font-gamer:   'Orbitron', sans-serif;
            --font-body:    'Rajdhani', sans-serif;
        }

        html { scroll-behavior: smooth; }

        body {
            background-color: var(--bg-dark);
            color: var(--text-main);
            font-family: var(--font-body);
            margin: 0; padding: 0;
            overflow-x: hidden;
        }

        /* Fondo animado de partículas / grid */
        body::before {
            content: '';
            position: fixed; inset: 0;
            background-image:
                linear-gradient(rgba(0,240,255,0.03) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0,240,255,0.03) 1px, transparent 1px);
            background-size: 60px 60px;
            pointer-events: none; z-index: 0;
            animation: grid-drift 20s linear infinite;
        }
        @keyframes grid-drift {
            0%   { background-position: 0 0; }
            100% { background-position: 60px 60px; }
        }

        /* Vignette lateral */
        body::after {
            content: '';
            position: fixed; inset: 0;
            background: radial-gradient(ellipse 80% 80% at 50% 50%, transparent 60%, rgba(7,8,15,0.7) 100%);
            pointer-events: none; z-index: 0;
        }

        h1, h2, h3 { font-family: var(--font-gamer); text-transform: uppercase; }

        /* =========================================
           HEADER CON LOGO
        ========================================= */
        header {
            background: rgba(7,8,15,0.88);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            padding: 0 2rem;
            position: sticky; top: 0; z-index: 100;
            border-bottom: 1px solid var(--border);
            box-shadow: 0 0 30px rgba(0,240,255,0.06);
        }

        .header-content {
            max-width: 1400px; margin: 0 auto;
            display: flex; flex-wrap: wrap;
            justify-content: space-between; align-items: center;
            gap: 16px; height: 72px;
        }

        /* ---- LOGO ---- */
        .leo-logo {
            display: flex; align-items: center;
            gap: 12px; text-decoration: none;
            user-select: none; flex-shrink: 0;
        }

        .leo-logo__icon {
            width: 44px; height: 44px; flex-shrink: 0; position: relative;
        }
        .leo-logo__icon svg {
            width: 100%; height: 100%;
            filter: drop-shadow(0 0 6px var(--primary)) drop-shadow(0 0 16px var(--accent));
            animation: icon-pulse 3s ease-in-out infinite;
        }
        @keyframes icon-pulse {
            0%,100% { filter: drop-shadow(0 0 5px var(--primary)) drop-shadow(0 0 12px var(--accent)); }
            50%      { filter: drop-shadow(0 0 12px var(--primary)) drop-shadow(0 0 28px var(--accent)); }
        }

        .leo-logo__bar {
            width: 3px; height: 34px; border-radius: 2px; flex-shrink: 0;
            background: linear-gradient(180deg, var(--primary), var(--accent));
            box-shadow: 0 0 10px var(--primary);
        }

        .leo-logo__text { display: flex; flex-direction: column; line-height: 1; }

        .leo-logo__name {
            font-family: var(--font-gamer);
            font-weight: 900; font-size: 1.1rem;
            letter-spacing: 0.06em; text-transform: uppercase;
            background: linear-gradient(90deg, var(--primary) 0%, #fff 45%, var(--accent) 100%);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; position: relative;
        }
        .leo-logo__name::after {
            content: attr(data-text); position: absolute; left: 0; top: 0;
            background: linear-gradient(90deg, var(--primary) 0%, #fff 45%, var(--accent) 100%);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;
            opacity: 0; animation: glitch 7s infinite;
            clip-path: polygon(0 25%, 100% 25%, 100% 55%, 0 55%);
        }
        @keyframes glitch {
            0%,92%,100% { opacity:0; transform:none; }
            93%  { opacity:.8; transform:translate(-3px,1px); }
            95%  { opacity:.8; transform:translate(3px,-1px); }
            97%  { opacity:.5; transform:translate(-1px,0); }
        }

        .leo-logo__tag {
            font-family: var(--font-body); font-size: 0.58rem;
            font-weight: 700; letter-spacing: 0.25em;
            text-transform: uppercase; color: var(--yellow); margin-top: 3px;
        }

        /* ---- NAV LINKS ---- */
        nav {
            display: flex; gap: 4px; flex-wrap: wrap;
        }
        nav a {
            color: var(--text-muted); text-decoration: none;
            font-family: var(--font-body); font-size: 0.82rem;
            font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase;
            transition: all 0.25s; cursor: none;
            padding: 6px 14px; border-radius: 6px;
            position: relative; overflow: hidden;
        }
        nav a::before {
            content: ''; position: absolute; bottom: 0; left: 50%;
            width: 0; height: 2px;
            background: linear-gradient(90deg, var(--primary), var(--accent));
            transform: translateX(-50%); transition: width 0.3s;
            border-radius: 2px;
        }
        nav a:hover, nav a.active {
            color: var(--primary);
            background: rgba(0,240,255,0.05);
        }
        nav a:hover::before, nav a.active::before { width: 70%; }

        /* ---- CONTROLES ---- */
        .controls {
            display: flex; gap: 10px;
            width: 100%; max-width: 380px;
        }

        input, select, textarea {
            padding: 9px 14px;
            background: rgba(0,240,255,0.04);
            border: 1px solid var(--border);
            color: var(--text-main);
            font-family: var(--font-body);
            font-size: 0.9rem; font-weight: 500;
            border-radius: 8px; outline: none; width: 100%;
            transition: all 0.3s;
        }
        input::placeholder { color: var(--text-muted); }
        input:focus, select:focus, textarea:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(0,240,255,0.1), 0 0 20px rgba(0,240,255,0.08);
        }
        option { background-color: var(--bg-card); color: white; }

        /* =========================================
           SECCIONES
        ========================================= */
        main {
            padding: 40px 20px;
            max-width: 1400px; margin: 0 auto;
            min-height: 70vh; position: relative; z-index: 1;
        }

        .seccion { display: none; animation: fadeIn 0.4s ease-out forwards; opacity: 0; }
        .seccion.activa { display: block; }

        @keyframes fadeIn {
            from { opacity:0; transform:translateY(18px); }
            to   { opacity:1; transform:translateY(0); }
        }

        h2.titulo-seccion {
            font-size: 1.8rem; margin-bottom: 30px;
            display: flex; align-items: center; gap: 14px;
            letter-spacing: 0.08em;
        }
        h2.titulo-seccion::before {
            content: '';
            display: inline-block; width: 5px; height: 32px;
            background: linear-gradient(to bottom, var(--primary), var(--accent));
            border-radius: 3px;
            box-shadow: 0 0 12px var(--primary);
        }

        /* =========================================
           HERO
        ========================================= */
        .hero {
            text-align: center;
            padding: 90px 20px 80px;
            border-radius: 20px;
            border: 1px solid var(--border);
            position: relative; overflow: hidden;
            background: linear-gradient(180deg, rgba(14,16,32,0.9) 0%, rgba(7,8,15,1) 100%);
        }

        /* Glow orbs */
        .hero::before, .hero::after {
            content: ''; position: absolute; border-radius: 50%;
            pointer-events: none;
        }
        .hero::before {
            width: 500px; height: 500px;
            top: -200px; left: 50%;
            transform: translateX(-50%);
            background: radial-gradient(circle, var(--primary-glow) 0%, transparent 70%);
            animation: orb1 6s ease-in-out infinite alternate;
        }
        .hero::after {
            width: 300px; height: 300px;
            bottom: -100px; right: 10%;
            background: radial-gradient(circle, var(--accent-glow) 0%, transparent 70%);
            animation: orb2 8s ease-in-out infinite alternate;
        }
        @keyframes orb1 { 0%{opacity:.25} 100%{opacity:.5} }
        @keyframes orb2 { 0%{opacity:.15} 100%{opacity:.35} }

        /* Líneas diagonales decorativas */
        .hero-lines {
            position: absolute; inset: 0; pointer-events: none; overflow: hidden;
        }
        .hero-lines span {
            position: absolute; width: 1px; height: 120px;
            background: linear-gradient(to bottom, transparent, var(--primary), transparent);
            opacity: 0.15; animation: line-fall 4s linear infinite;
        }
        .hero-lines span:nth-child(1)  { left:15%; top:-20%; animation-delay:0s; }
        .hero-lines span:nth-child(2)  { left:35%; top:-20%; animation-delay:1.2s; animation-duration:3.5s; }
        .hero-lines span:nth-child(3)  { left:60%; top:-20%; animation-delay:0.7s; animation-duration:5s; }
        .hero-lines span:nth-child(4)  { left:80%; top:-20%; animation-delay:2s; animation-duration:4.2s; }
        .hero-lines span:nth-child(5)  { left:25%; top:-20%; animation-delay:3s; animation-duration:3.8s; opacity:0.08; }
        @keyframes line-fall {
            0%   { transform: translateY(0); opacity:0; }
            10%  { opacity:0.15; }
            90%  { opacity:0.15; }
            100% { transform: translateY(calc(100vh + 120px)); opacity:0; }
        }

        /* Logo grande centrado en hero */
        .hero-logo-wrap {
            position: relative; z-index: 2;
            display: flex; justify-content: center; align-items: center;
            gap: 16px; margin-bottom: 28px;
        }
        .hero-logo-wrap .leo-logo__icon { width: 72px; height: 72px; }
        .hero-logo-wrap .leo-logo__bar  { height: 56px; width: 4px; box-shadow: 0 0 16px var(--primary); }
        .hero-logo-wrap .leo-logo__name { font-size: 2rem; }
        .hero-logo-wrap .leo-logo__tag  { font-size: 0.72rem; }

        .hero h2 {
            font-size: clamp(1rem, 3vw, 1.3rem);
            font-weight: 400; letter-spacing: 0.3em;
            color: var(--text-muted); margin: 0 0 8px 0;
            position: relative; z-index: 2;
        }
        .hero p {
            font-size: 1.1rem; color: var(--text-muted);
            margin-bottom: 40px; max-width: 560px;
            margin-inline: auto; position: relative; z-index: 2;
            line-height: 1.6;
        }

        .botones-hero {
            display: flex; justify-content: center;
            gap: 14px; flex-wrap: wrap;
            position: relative; z-index: 2;
        }

        /* Stats mini en hero */
        .hero-stats {
            display: flex; justify-content: center; gap: 40px;
            flex-wrap: wrap; margin-top: 50px;
            position: relative; z-index: 2;
            border-top: 1px solid var(--border); padding-top: 30px;
        }
        .hero-stat { text-align: center; }
        .hero-stat__num {
            font-family: var(--font-gamer);
            font-size: 2rem; font-weight: 900;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;
        }
        .hero-stat__label { font-size: 0.75rem; letter-spacing: 0.18em; color: var(--text-muted); text-transform: uppercase; margin-top: 2px; }

        /* =========================================
           BOTONES
        ========================================= */
        .btn {
            background: rgba(0,240,255,0.06);
            color: var(--primary);
            border: 1px solid rgba(0,240,255,0.35);
            padding: 11px 28px; font-size: 0.82rem;
            font-weight: 700; font-family: var(--font-gamer);
            letter-spacing: 0.08em; text-transform: uppercase;
            cursor: none; border-radius: 6px;
            transition: all 0.25s ease;
            text-decoration: none; position: relative; overflow: hidden;
        }
        .btn::before {
            content: ''; position: absolute;
            top: 0; left: -100%;
            width: 100%; height: 100%;
            background: linear-gradient(90deg, transparent, rgba(0,240,255,0.12), transparent);
            transition: left 0.4s;
        }
        .btn:hover::before { left: 100%; }
        .btn:hover {
            background: rgba(0,240,255,0.15);
            box-shadow: 0 0 20px rgba(0,240,255,0.3), inset 0 0 20px rgba(0,240,255,0.05);
            transform: translateY(-2px);
        }
        .btn-primary {
            background: linear-gradient(135deg, var(--primary), #0099bb);
            color: #000; border-color: var(--primary);
            box-shadow: 0 0 20px rgba(0,240,255,0.25);
        }
        .btn-primary:hover {
            box-shadow: 0 0 35px rgba(0,240,255,0.5), 0 4px 16px rgba(0,0,0,0.3);
            transform: translateY(-3px);
        }
        .btn-accent {
            background: rgba(180,0,255,0.08);
            color: var(--accent); border-color: rgba(180,0,255,0.4);
        }
        .btn-accent:hover {
            background: rgba(180,0,255,0.18);
            box-shadow: 0 0 20px rgba(180,0,255,0.35);
        }

        /* =========================================
           GRID Y CARDS
        ========================================= */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 18px;
        }

        .card {
            background: var(--bg-card);
            border-radius: 14px; overflow: hidden;
            cursor: none; transition: all 0.3s ease;
            position: relative; border: 1px solid var(--border);
            display: flex; flex-direction: column;
        }
        /* Scanline en las cards */
        .card::after {
            content: ''; position: absolute; inset: 0;
            background: repeating-linear-gradient(
                0deg, transparent, transparent 3px,
                rgba(0,0,0,0.04) 3px, rgba(0,0,0,0.04) 4px
            );
            pointer-events: none; border-radius: 14px;
            opacity: 0; transition: opacity 0.3s;
        }
        .card:hover::after { opacity: 1; }

        .card:hover {
            transform: translateY(-8px) scale(1.02);
            background: var(--bg-card-hover);
            border-color: rgba(0,240,255,0.3);
            box-shadow: 0 16px 40px rgba(0,0,0,0.5), 0 0 20px rgba(0,240,255,0.1);
        }

        /* Borde superior de rareza */
        .card[data-rarity="legendary"] { border-top: 2px solid var(--legendary); }
        .card[data-rarity="epic"]      { border-top: 2px solid var(--epic); }
        .card[data-rarity="rare"]      { border-top: 2px solid var(--rare); }
        .card[data-rarity="uncommon"]  { border-top: 2px solid var(--uncommon); }

        .card-img-wrapper {
            width: 100%; height: 220px;
            background: linear-gradient(180deg, #111428 0%, #0a0c18 100%);
            display: flex; justify-content: center; align-items: center;
            padding: 18px; position: relative; overflow: hidden;
        }
        /* Brillo de fondo según rareza */
        .card-img-wrapper::before {
            content: ''; position: absolute; inset: 0;
            background: radial-gradient(ellipse 80% 60% at 50% 80%, rgba(0,240,255,0.06) 0%, transparent 70%);
            pointer-events: none;
        }

        .card img {
            max-width: 100%; max-height: 100%;
            object-fit: contain;
            transition: transform 0.35s ease;
            filter: drop-shadow(0 4px 16px rgba(0,0,0,0.6));
            position: relative; z-index: 1;
        }
        .card:hover img { transform: scale(1.1) translateY(-4px); }

        .card-info { padding: 16px; display: flex; flex-direction: column; gap: 7px; }

        .card h3 {
            margin: 0; font-size: 0.92rem;
            white-space: nowrap; overflow: hidden;
            text-overflow: ellipsis; letter-spacing: 0.05em;
        }

        /* Rarezas */
        .badge {
            align-self: flex-start; padding: 3px 9px;
            border-radius: 5px; font-family: var(--font-body);
            font-size: 0.68rem; font-weight: 700;
            text-transform: uppercase; letter-spacing: 0.1em;
        }
        .badge.legendary { background:rgba(212,175,55,.12); color:var(--legendary); border:1px solid rgba(212,175,55,.3); }
        .badge.epic      { background:rgba(179,0,255,.12);  color:var(--epic);      border:1px solid rgba(179,0,255,.3); }
        .badge.rare      { background:rgba(0,174,255,.12);  color:var(--rare);      border:1px solid rgba(0,174,255,.3); }
        .badge.uncommon  { background:rgba(0,204,102,.12);  color:var(--uncommon);  border:1px solid rgba(0,204,102,.3); }
        .badge.common    { background:rgba(128,128,128,.12);color:var(--common);    border:1px solid rgba(128,128,128,.3); }
        .badge.special   { background:rgba(255,51,51,.12);  color:#ff5555;          border:1px solid rgba(255,51,51,.3); }

        /* =========================================
           LOADING
        ========================================= */
        .loading-container {
            display: flex; flex-direction: column;
            align-items: center; justify-content: center;
            min-height: 40vh; gap: 20px; position: relative; z-index: 1;
        }
        .spinner {
            width: 52px; height: 52px;
            border: 3px solid rgba(0,240,255,0.1);
            border-top-color: var(--primary);
            border-right-color: var(--accent);
            border-radius: 50%;
            animation: spin 0.9s linear infinite;
            box-shadow: 0 0 20px rgba(0,240,255,0.2);
        }
        @keyframes spin { to { transform:rotate(360deg); } }

        /* =========================================
           CONTACTO
        ========================================= */
        .formulario-contacto {
            max-width: 480px; margin: 0 auto;
            background: var(--bg-card); padding: 40px;
            border-radius: 16px; border: 1px solid var(--border);
            box-shadow: 0 0 40px rgba(0,0,0,0.3);
        }
        .grupo-form { margin-bottom: 18px; }
        .grupo-form label {
            display: block; margin-bottom: 7px;
            font-size: 0.78rem; font-weight: 700;
            letter-spacing: 0.15em; text-transform: uppercase;
            color: var(--text-muted);
        }
        .formulario-contacto button { width: 100%; margin-top: 10px; }

        /* =========================================
           FOOTER
        ========================================= */
        footer {
            text-align: center; padding: 28px 20px;
            background: rgba(0,0,0,0.5);
            border-top: 1px solid var(--border);
            color: var(--text-muted); font-size: 0.82rem;
            letter-spacing: 0.08em; position: relative; z-index: 1;
        }
        footer span { color: var(--primary); }

        /* Botón scroll up */
        #btn-up {
            position: fixed; bottom: 28px; right: 28px;
            background: var(--bg-card); color: var(--primary);
            width: 44px; height: 44px; border-radius: 8px;
            font-size: 1.1rem;
            border: 1px solid rgba(0,240,255,0.3);
            cursor: none; display: none;
            justify-content: center; align-items: center;
            box-shadow: 0 0 20px rgba(0,240,255,0.15);
            z-index: 1000; transition: all 0.3s;
            font-family: var(--font-gamer);
        }
        #btn-up:hover {
            background: var(--primary); color: #000;
            box-shadow: 0 0 30px rgba(0,240,255,0.5);
            transform: translateY(-4px);
        }

        /* =========================================
           MODAL
        ========================================= */
        .modal-overlay {
            position: fixed; inset: 0;
            background: rgba(0,0,0,0.9);
            backdrop-filter: blur(10px); -webkit-backdrop-filter: blur(10px);
            display: flex; justify-content: center; align-items: center;
            z-index: 999; opacity: 0; pointer-events: none;
            transition: opacity 0.3s ease; padding: 20px;
        }
        .modal-overlay.active { opacity:1; pointer-events:all; }

        .modal-content {
            background: var(--bg-card);
            padding: 36px; border-radius: 18px;
            border: 1px solid rgba(0,240,255,0.2);
            box-shadow: 0 0 60px rgba(0,240,255,0.1), 0 30px 60px rgba(0,0,0,0.6);
            max-width: 420px; width: 100%;
            text-align: center; position: relative;
            transform: translateY(24px) scale(0.95);
            transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
            max-height: 90vh; overflow-y: auto;
        }
        .modal-overlay.active .modal-content { transform: translateY(0) scale(1); }

        .modal-content img {
            width: 100%; height: 240px; object-fit: contain;
            margin-bottom: 20px;
            filter: drop-shadow(0 10px 30px rgba(0,240,255,0.2));
        }
        .close-btn {
            position: absolute; top: 14px; right: 14px;
            font-size: 1rem; color: var(--text-muted); cursor: none;
            background: rgba(255,255,255,0.04);
            border: 1px solid var(--border);
            border-radius: 50%; width: 32px; height: 32px;
            display: flex; justify-content: center; align-items: center;
            transition: all 0.2s; font-family: var(--font-body);
        }
        .close-btn:hover { background: #ff3333; color: #fff; border-color: #ff3333; }

        #modal-title { margin: 8px 0; font-size: 1.6rem; letter-spacing: 0.06em; }
        .modal-meta-info { color: var(--text-muted); font-size: 0.88rem; margin-top: 12px; }
        #modal-set { color: var(--primary); font-weight: 700; letter-spacing: 0.06em; margin-bottom: 4px; }
        #modal-desc {
            font-size: 0.95rem; color: rgba(255,255,255,0.7);
            margin-top: 18px; border-top: 1px solid var(--border);
            padding-top: 18px; line-height: 1.65; text-align: left;
        }

        /* =========================================
           SECCIONES DE CONTENIDO EN INICIO
        ========================================= */
        .intro-section {
            margin-top: 60px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        @media (max-width: 800px) { .intro-section { grid-template-columns: 1fr; } }

        .intro-card {
            background: var(--bg-card); border: 1px solid var(--border);
            border-radius: 16px; padding: 32px 28px;
            position: relative; overflow: hidden;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .intro-card:hover {
            border-color: rgba(0,240,255,0.3);
            box-shadow: 0 0 30px rgba(0,240,255,0.07);
        }
        .intro-card::before {
            content: ''; position: absolute; top: 0; left: 0;
            width: 100%; height: 3px;
            background: linear-gradient(90deg, var(--primary), var(--accent));
        }
        .intro-card--accent::before { background: linear-gradient(90deg, var(--accent), var(--yellow)); }
        .intro-card--yellow::before { background: linear-gradient(90deg, var(--yellow), var(--primary)); }
        .intro-card--full { grid-column: 1 / -1; }

        .intro-card__icon { font-size: 2rem; margin-bottom: 14px; display: block; }
        .intro-card h3 {
            font-size: 1rem; letter-spacing: 0.1em;
            margin: 0 0 10px 0; color: var(--primary);
        }
        .intro-card--accent h3 { color: #cc66ff; }
        .intro-card--yellow h3 { color: var(--yellow); }
        .intro-card p {
            font-size: 0.95rem; color: var(--text-muted);
            line-height: 1.65; margin: 0; font-family: var(--font-body);
        }

        .cats-section { margin-top: 60px; }
        .cats-label {
            font-family: var(--font-gamer); font-size: 0.78rem;
            letter-spacing: 0.22em; color: var(--text-muted);
            text-transform: uppercase; margin-bottom: 20px;
            display: flex; align-items: center; gap: 12px;
        }
        .cats-label::after {
            content: ''; flex: 1; height: 1px;
            background: linear-gradient(90deg, var(--border), transparent);
        }
        .cats-grid {
            display: grid; grid-template-columns: repeat(5, 1fr); gap: 14px;
        }
        @media (max-width: 700px) { .cats-grid { grid-template-columns: repeat(3, 1fr); } }

        .cat-card {
            background: var(--bg-card); border: 1px solid var(--border);
            border-radius: 14px; padding: 22px 12px;
            text-align: center; cursor: none;
            transition: all 0.25s;
            display: flex; flex-direction: column; align-items: center; gap: 10px;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            border-color: rgba(0,240,255,0.35);
            background: var(--bg-card-hover);
            box-shadow: 0 12px 30px rgba(0,0,0,0.4), 0 0 16px rgba(0,240,255,0.08);
        }
        .cat-card__emoji { font-size: 2rem; }
        .cat-card__name {
            font-family: var(--font-gamer); font-size: 0.62rem;
            letter-spacing: 0.12em; color: var(--text-muted); text-transform: uppercase;
        }
        .cat-card:hover .cat-card__name { color: var(--primary); }
        .cat-card__count { font-size: 0.75rem; color: var(--primary); font-weight: 700; }

        .how-section { margin-top: 60px; }
        .how-steps {
            display: grid; grid-template-columns: repeat(4, 1fr);
            gap: 0; position: relative; margin-top: 24px;
        }
        @media (max-width: 700px) {
            .how-steps { grid-template-columns: 1fr 1fr; gap: 14px; }
        }
        .how-steps::before {
            content: ''; position: absolute; top: 28px; left: 12.5%; right: 12.5%;
            height: 1px;
            background: linear-gradient(90deg, var(--primary), var(--accent), var(--primary));
            opacity: 0.2;
        }
        .how-step {
            display: flex; flex-direction: column;
            align-items: center; text-align: center;
            padding: 0 16px; position: relative; z-index: 1;
        }
        .how-step__num {
            width: 56px; height: 56px; border-radius: 50%;
            background: var(--bg-card); border: 1px solid rgba(0,240,255,0.3);
            display: flex; align-items: center; justify-content: center;
            font-family: var(--font-gamer); font-size: 1.1rem; font-weight: 900;
            color: var(--primary); box-shadow: 0 0 18px rgba(0,240,255,0.12);
            margin-bottom: 16px;
        }
        .how-step h4 {
            font-family: var(--font-gamer); font-size: 0.72rem;
            letter-spacing: 0.1em; margin: 0 0 8px 0; color: var(--text-main);
        }
        .how-step p { font-size: 0.85rem; color: var(--text-muted); line-height: 1.55; margin: 0; }

        .cta-banner {
            margin-top: 60px;
            background: linear-gradient(135deg, rgba(0,240,255,0.06) 0%, rgba(180,0,255,0.06) 100%);
            border: 1px solid rgba(0,240,255,0.18); border-radius: 16px;
            padding: 40px 32px; display: flex; align-items: center;
            justify-content: space-between; flex-wrap: wrap; gap: 24px;
        }
        .cta-banner__text h3 {
            font-family: var(--font-gamer); font-size: 1.1rem;
            letter-spacing: 0.08em; margin: 0 0 8px 0; color: var(--text-main);
        }
        .cta-banner__text p { font-size: 0.92rem; color: var(--text-muted); margin: 0; line-height: 1.5; }
        .cta-banner__btns { display: flex; gap: 12px; flex-wrap: wrap; }

        /* =========================================
           RESPONSIVE
        ========================================= */
        @media (max-width: 700px) {
            .header-content { height: auto; padding: 12px 0; }
            .leo-logo__name { font-size: 0.9rem; }
            .leo-logo__icon { width: 36px; height: 36px; }
            nav { gap: 2px; }
            nav a { font-size: 0.72rem; padding: 5px 10px; }
            .controls { max-width: 100%; }
        }
    </style>
</head>
<body>

    <!-- Cursor personalizado -->
    <div class="cursor-dot"  id="cursor-dot"></div>
    <div class="cursor-ring" id="cursor-ring"></div>

    <!-- ================================================
         HEADER CON LOGO
    ================================================ -->
    <header>
        <div class="header-content">

            <!-- LOGO -->
            <a href="#" class="leo-logo" onclick="cambiarSeccion('inicio'); return false;" aria-label="Fortnite Universe – Inicio">
                <div class="leo-logo__icon">
                    <svg viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <polygon points="21,2 37,11 37,31 21,40 5,31 5,11"
                            fill="none" stroke="url(#hg1)" stroke-width="1.4"/>
                        <rect x="18" y="11" width="6" height="20" rx="2.5" fill="url(#hg2)" opacity="0.95"/>
                        <rect x="11" y="18" width="20" height="6" rx="2.5" fill="url(#hg2)" opacity="0.95"/>
                        <circle cx="21" cy="21" r="4" fill="#fff" opacity="0.95"/>
                        <circle cx="21" cy="21" r="2.2" fill="url(#hg1)"/>
                        <circle cx="28.5" cy="13.5" r="1.8" fill="#ffe600" opacity="0.9"/>
                        <circle cx="13.5" cy="28.5" r="1.8" fill="#00f0ff" opacity="0.9"/>
                        <circle cx="28.5" cy="28.5" r="1.3" fill="#b400ff" opacity="0.8"/>
                        <defs>
                            <linearGradient id="hg1" x1="5" y1="2" x2="37" y2="40" gradientUnits="userSpaceOnUse">
                                <stop offset="0%"   stop-color="#00f0ff"/>
                                <stop offset="100%" stop-color="#b400ff"/>
                            </linearGradient>
                            <linearGradient id="hg2" x1="11" y1="11" x2="31" y2="31" gradientUnits="userSpaceOnUse">
                                <stop offset="0%"   stop-color="#00f0ff" stop-opacity="0.95"/>
                                <stop offset="100%" stop-color="#b400ff" stop-opacity="0.95"/>
                            </linearGradient>
                        </defs>
                    </svg>
                </div>
                <div class="leo-logo__bar"></div>
                <div class="leo-logo__text">
                    <span class="leo-logo__name" data-text="Fortnite Universe">Fortnite Universe</span>
                    <span class="leo-logo__tag">&#9679; Galería Oficial</span>
                </div>
            </a>

            <!-- NAV -->
            <nav id="menu-nav">
                <a onclick="cambiarSeccion('inicio')"    class="active">Inicio</a>
                <a onclick="cambiarSeccion('skins')">Skins</a>
                <a onclick="cambiarSeccion('picos')">Picos</a>
                <a onclick="cambiarSeccion('mochilas')">Mochilas</a>
                <a onclick="cambiarSeccion('aladeltas')">Aladeltas</a>
                <a onclick="cambiarSeccion('bailes')">Bailes</a>
                <a onclick="cambiarSeccion('contacto')">Contacto</a>
            </nav>

            <!-- FILTROS -->
            <div class="controls">
                <input type="text" id="searchInput" placeholder="Buscar objeto..." oninput="aplicarFiltros()">
                <select id="rarityFilter" onchange="aplicarFiltros()">
                    <option value="all">Todas las rarezas</option>
                    <option value="legendary">Legendario</option>
                    <option value="epic">Épico</option>
                    <option value="rare">Raro</option>
                    <option value="uncommon">Inusual</option>
                    <option value="common">Común</option>
                </select>
            </div>
        </div>
    </header>

    <main>
        <div id="loading" class="loading-container">
            <div class="spinner"></div>
            <p style="color:var(--text-muted); letter-spacing:0.15em; font-family:var(--font-gamer); font-size:0.8rem;">Conectando con Epic Games...</p>
        </div>

        <!-- INICIO -->
        <section id="inicio" class="seccion activa">
            <div class="hero">
                <div class="hero-lines">
                    <span></span><span></span><span></span><span></span><span></span>
                </div>

                <!-- Logo grande en hero -->
                <div class="hero-logo-wrap">
                    <div class="leo-logo__icon">
                        <svg viewBox="0 0 42 42" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <polygon points="21,2 37,11 37,31 21,40 5,31 5,11" fill="none" stroke="url(#hg3)" stroke-width="1.4"/>
                            <rect x="18" y="11" width="6" height="20" rx="2.5" fill="url(#hg4)" opacity="0.95"/>
                            <rect x="11" y="18" width="20" height="6" rx="2.5" fill="url(#hg4)" opacity="0.95"/>
                            <circle cx="21" cy="21" r="4" fill="#fff" opacity="0.95"/>
                            <circle cx="21" cy="21" r="2.2" fill="url(#hg3)"/>
                            <circle cx="28.5" cy="13.5" r="1.8" fill="#ffe600" opacity="0.9"/>
                            <circle cx="13.5" cy="28.5" r="1.8" fill="#00f0ff" opacity="0.9"/>
                            <circle cx="28.5" cy="28.5" r="1.3" fill="#b400ff" opacity="0.8"/>
                            <defs>
                                <linearGradient id="hg3" x1="5" y1="2" x2="37" y2="40" gradientUnits="userSpaceOnUse">
                                    <stop offset="0%" stop-color="#00f0ff"/><stop offset="100%" stop-color="#b400ff"/>
                                </linearGradient>
                                <linearGradient id="hg4" x1="11" y1="11" x2="31" y2="31" gradientUnits="userSpaceOnUse">
                                    <stop offset="0%" stop-color="#00f0ff" stop-opacity="0.95"/><stop offset="100%" stop-color="#b400ff" stop-opacity="0.95"/>
                                </linearGradient>
                            </defs>
                        </svg>
                    </div>
                    <div class="leo-logo__bar"></div>
                    <div class="leo-logo__text">
                    <span class="leo-logo__name" data-text="Fortnite Universe">Fortnite Universe</span>
                        <span class="leo-logo__tag">&#9679; Galería Oficial &#9679;</span>
                    </div>
                </div>

                <h2>La Base de Datos Definitiva de Fortnite</h2>
                <p>Explora más de 500 cosméticos en alta calidad — skins, picos, mochilas, aladeltas y bailes — directamente desde la API oficial de Epic Games, actualizada en tiempo real.</p>
                <div class="botones-hero">
                    <button class="btn btn-primary" onclick="cambiarSeccion('skins')">Ver Skins</button>
                    <button class="btn btn-accent"  onclick="cambiarSeccion('picos')">Explorar Picos</button>
                    <button class="btn"             onclick="cambiarSeccion('bailes')">Ver Bailes</button>
                </div>

                <div class="hero-stats">
                    <div class="hero-stat"><div class="hero-stat__num">500+</div><div class="hero-stat__label">Objetos</div></div>
                    <div class="hero-stat"><div class="hero-stat__num">5</div><div class="hero-stat__label">Categorías</div></div>
                    <div class="hero-stat"><div class="hero-stat__num">Live</div><div class="hero-stat__label">API en vivo</div></div>
                    <div class="hero-stat"><div class="hero-stat__num">4K</div><div class="hero-stat__label">Imágenes HD</div></div>
                </div>
            </div>

            <!-- BLOQUE: Qué es esta web -->
            <div class="intro-section">
                <div class="intro-card intro-card--full">
                    <span class="intro-card__icon">🌌</span>
                    <h3>¿Qué es Fortnite Universe?</h3>
                    <p>Fortnite Universe es la galería de cosméticos más completa en español. Nuestra misión es ofrecerte un catálogo visual de todos los objetos disponibles en Fortnite Battle Royale: desde las skins más icónicas hasta los bailes más raros, organizados, filtrados y presentados en alta resolución para que puedas explorarlos cómodamente sin salir del navegador.</p>
                </div>
                <div class="intro-card">
                    <span class="intro-card__icon">⚡</span>
                    <h3>Datos en tiempo real</h3>
                    <p>Toda la información se obtiene directamente desde la <strong style="color:var(--primary)">Fortnite API oficial</strong>, lo que garantiza que los cosméticos que ves aquí son los más recientes. Cada vez que visitas la web, los datos se actualizan automáticamente para reflejar las últimas adiciones al juego.</p>
                </div>
                <div class="intro-card intro-card--accent">
                    <span class="intro-card__icon">🔎</span>
                    <h3>Búsqueda y filtros</h3>
                    <p>Usa la barra de búsqueda en la parte superior para encontrar cualquier objeto por nombre, o filtra por rareza — legendario, épico, raro, inusual o común. La búsqueda funciona en todas las categorías al mismo tiempo para que no te pierdas nada.</p>
                </div>
                <div class="intro-card intro-card--yellow">
                    <span class="intro-card__icon">🃏</span>
                    <h3>Detalles de cada objeto</h3>
                    <p>Haz clic en cualquier tarjeta para ver la imagen ampliada, la rareza, el set al que pertenece el objeto, la temporada en que fue introducido y su descripción oficial de Epic Games. Todo en un modal limpio y rápido.</p>
                </div>
            </div>

            <!-- BLOQUE: Categorías -->
            <div class="cats-section">
                <div class="cats-label">Explora por categoría</div>
                <div class="cats-grid">
                    <div class="cat-card" onclick="cambiarSeccion('skins')">
                        <span class="cat-card__emoji">🧍</span>
                        <span class="cat-card__name">Skins</span>
                        <span class="cat-card__count">100 items</span>
                    </div>
                    <div class="cat-card" onclick="cambiarSeccion('picos')">
                        <span class="cat-card__emoji">⛏️</span>
                        <span class="cat-card__name">Picos</span>
                        <span class="cat-card__count">100 items</span>
                    </div>
                    <div class="cat-card" onclick="cambiarSeccion('mochilas')">
                        <span class="cat-card__emoji">🎒</span>
                        <span class="cat-card__name">Mochilas</span>
                        <span class="cat-card__count">100 items</span>
                    </div>
                    <div class="cat-card" onclick="cambiarSeccion('aladeltas')">
                        <span class="cat-card__emoji">🪂</span>
                        <span class="cat-card__name">Aladeltas</span>
                        <span class="cat-card__count">100 items</span>
                    </div>
                    <div class="cat-card" onclick="cambiarSeccion('bailes')">
                        <span class="cat-card__emoji">💃</span>
                        <span class="cat-card__name">Bailes</span>
                        <span class="cat-card__count">100 items</span>
                    </div>
                </div>
            </div>

            <!-- BLOQUE: Cómo funciona -->
            <div class="how-section">
                <div class="cats-label">Cómo funciona</div>
                <div class="how-steps">
                    <div class="how-step">
                        <div class="how-step__num">01</div>
                        <h4>Elige categoría</h4>
                        <p>Selecciona entre Skins, Picos, Mochilas, Aladeltas o Bailes desde el menú superior.</p>
                    </div>
                    <div class="how-step">
                        <div class="how-step__num">02</div>
                        <h4>Busca o filtra</h4>
                        <p>Escribe el nombre del objeto o elige una rareza para encontrarlo al instante.</p>
                    </div>
                    <div class="how-step">
                        <div class="how-step__num">03</div>
                        <h4>Haz clic</h4>
                        <p>Toca cualquier tarjeta para ver la imagen en grande y todos sus detalles oficiales.</p>
                    </div>
                    <div class="how-step">
                        <div class="how-step__num">04</div>
                        <h4>Descubre más</h4>
                        <p>Explora sets completos, temporadas y rarezas para conocer toda la historia del objeto.</p>
                    </div>
                </div>
            </div>

            <!-- BLOQUE: CTA -->
            <div class="cta-banner">
                <div class="cta-banner__text">
                    <h3>¿Listo para explorar el universo?</h3>
                    <p>Más de 500 cosméticos te esperan. Empieza por las skins más recientes o busca tu favorita directamente.</p>
                </div>
                <div class="cta-banner__btns">
                    <button class="btn btn-primary" onclick="cambiarSeccion('skins')">Ver todas las Skins</button>
                    <button class="btn" onclick="cambiarSeccion('contacto')">Contactar</button>
                </div>
            </div>

        </section>

        <section id="skins"     class="seccion"><h2 class="titulo-seccion">Catálogo de Skins</h2>    <div class="grid" id="skins-grid"></div></section>
        <section id="picos"     class="seccion"><h2 class="titulo-seccion">Catálogo de Picos</h2>    <div class="grid" id="picos-grid"></div></section>
        <section id="mochilas"  class="seccion"><h2 class="titulo-seccion">Catálogo de Mochilas</h2> <div class="grid" id="mochilas-grid"></div></section>
        <section id="aladeltas" class="seccion"><h2 class="titulo-seccion">Catálogo de Aladeltas</h2><div class="grid" id="aladeltas-grid"></div></section>
        <section id="bailes"    class="seccion"><h2 class="titulo-seccion">Catálogo de Bailes</h2>   <div class="grid" id="bailes-grid"></div></section>

        <section id="contacto" class="seccion">
            <h2 class="titulo-seccion">Contacta con Nosotros</h2>
            <div class="formulario-contacto">
                <div class="grupo-form"><label>Tu ID de Epic Games</label><input type="text" placeholder="Ej: Ninja99"></div>
                <div class="grupo-form"><label>Correo Electrónico</label><input type="email" placeholder="tu@correo.com"></div>
                <div class="grupo-form"><label>Mensaje</label><textarea rows="5" placeholder="Dinos qué te gustaría ver en la web..."></textarea></div>
                <button class="btn btn-primary" onclick="alert('¡Transmisión enviada con éxito!')">Enviar Transmisión</button>
            </div>
        </section>
    </main>

    <button id="btn-up" onclick="window.scrollTo({top:0,behavior:'smooth'})">↑</button>

    <footer>
        <p>&copy; 2026 <span>Fortnite Universe</span> &mdash; Datos proporcionados por Fortnite-API.com</p>
    </footer>

    <!-- MODAL -->
    <div class="modal-overlay" id="modal">
        <div class="modal-content">
            <button class="close-btn" onclick="cerrarModal()">✖</button>
            <img id="modal-img" src="" alt="Item">
            <span id="modal-rarity" class="badge">Rareza</span>
            <h2 id="modal-title">Nombre</h2>
            <div class="modal-meta-info">
                <div id="modal-set"   style="color:var(--primary);font-weight:700;margin-bottom:4px;"></div>
                <div id="modal-season"></div>
            </div>
            <p id="modal-desc"></p>
        </div>
    </div>

    <script>
        /* ---- CURSOR ---- */
        const dot  = document.getElementById('cursor-dot');
        const ring = document.getElementById('cursor-ring');
        document.addEventListener('mousemove', e => {
            dot.style.left  = e.clientX + 'px';
            dot.style.top   = e.clientY + 'px';
            ring.style.left = e.clientX + 'px';
            ring.style.top  = e.clientY + 'px';
        });
        document.querySelectorAll('a,button,.card,.close-btn').forEach(el => {
            el.addEventListener('mouseenter', () => ring.classList.add('hover'));
            el.addEventListener('mouseleave', () => ring.classList.remove('hover'));
        });

        /* ---- DATOS ---- */
        let allSkins=[], allPicos=[], allMochilas=[], allAladeltas=[], allBailes=[];
        let seccionActual = 'inicio';

        window.onscroll = () => {
            document.getElementById('btn-up').style.display =
                (document.documentElement.scrollTop > 400) ? 'flex' : 'none';
        };

        function cambiarSeccion(id) {
            document.querySelectorAll('.seccion').forEach(s => s.classList.remove('activa'));
            document.getElementById(id).classList.add('activa');
            document.querySelectorAll('#menu-nav a').forEach(a => {
                a.classList.toggle('active', a.getAttribute('onclick').includes(id));
            });
            seccionActual = id;
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        async function initWeb() {
            try {
                const res  = await fetch('https://fortnite-api.com/v2/cosmetics/br');
                const data = await res.json();
                const con  = data.data.filter(i => i.images && (i.images.featured || i.images.icon));

                allSkins     = con.filter(i => i.type.value==='outfit'  ).reverse().slice(0,100);
                allPicos     = con.filter(i => i.type.value==='pickaxe' ).reverse().slice(0,100);
                allMochilas  = con.filter(i => i.type.value==='backpack').reverse().slice(0,100);
                allAladeltas = con.filter(i => i.type.value==='glider'  ).reverse().slice(0,100);
                allBailes    = con.filter(i => i.type.value==='emote'   ).reverse().slice(0,100);

                document.getElementById('loading').style.display = 'none';

                renderizarItems(allSkins,     'skins-grid');
                renderizarItems(allPicos,     'picos-grid');
                renderizarItems(allMochilas,  'mochilas-grid');
                renderizarItems(allAladeltas, 'aladeltas-grid');
                renderizarItems(allBailes,    'bailes-grid');
            } catch(e) {
                document.getElementById('loading').innerHTML =
                    "<p style='color:#ff5555;font-family:var(--font-gamer);font-size:.85rem;letter-spacing:.1em;'>Error al conectar. Recarga la página.</p>";
            }
        }

        function getRarityClass(v) {
            return ['legendary','epic','rare','uncommon','common'].includes(v) ? v : 'special';
        }

        function renderizarItems(array, id) {
            const c = document.getElementById(id);
            c.innerHTML = '';
            if (!array.length) {
                c.innerHTML = '<p style="grid-column:1/-1;text-align:center;color:var(--text-muted);font-family:var(--font-gamer);font-size:.8rem;letter-spacing:.1em;">No se encontraron objetos con esos filtros.</p>';
                return;
            }
            array.forEach(item => {
                const img     = item.images.featured || item.images.icon;
                const rarity  = item.rarity ? item.rarity.value        : 'common';
                const rName   = item.rarity ? item.rarity.displayValue : 'Común';
                const badge   = getRarityClass(rarity);
                const card    = document.createElement('div');
                card.className = 'card';
                card.dataset.rarity = badge;
                card.onclick  = () => abrirModal(item, img, badge, rName);
                card.innerHTML = `
                    <div class="card-img-wrapper">
                        <img src="${img}" loading="lazy" alt="${item.name}">
                    </div>
                    <div class="card-info">
                        <span class="badge ${badge}">${rName}</span>
                        <h3>${item.name}</h3>
                    </div>`;
                c.appendChild(card);
            });
        }

        function aplicarFiltros() {
            if (seccionActual==='inicio' || seccionActual==='contacto') cambiarSeccion('skins');
            const txt = document.getElementById('searchInput').value.toLowerCase();
            const rar = document.getElementById('rarityFilter').value;
            const fn  = arr => arr.filter(i => {
                const r = i.rarity ? i.rarity.value : 'common';
                return i.name.toLowerCase().includes(txt) && (rar==='all' || r===rar);
            });
            renderizarItems(fn(allSkins),     'skins-grid');
            renderizarItems(fn(allPicos),     'picos-grid');
            renderizarItems(fn(allMochilas),  'mochilas-grid');
            renderizarItems(fn(allAladeltas), 'aladeltas-grid');
            renderizarItems(fn(allBailes),    'bailes-grid');
        }

        function abrirModal(item, img, badge, rName) {
            document.getElementById('modal-img').src        = img;
            document.getElementById('modal-title').textContent = item.name;
            const rb = document.getElementById('modal-rarity');
            rb.textContent = rName; rb.className = `badge ${badge}`;
            const s = document.getElementById('modal-set');
            s.textContent = item.set?.text ? `✨ ${item.set.text}` : '';
            s.style.display = item.set?.text ? 'block' : 'none';
            document.getElementById('modal-season').textContent =
                `📅 ${item.introduction ? item.introduction.text : 'Temporada desconocida'}`;
            document.getElementById('modal-desc').textContent =
                item.description || 'Sin descripción disponible.';
            document.getElementById('modal').classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function cerrarModal() {
            document.getElementById('modal').classList.remove('active');
            document.body.style.overflow = 'auto';
        }

        document.getElementById('modal').addEventListener('click', e => { if(e.target.id==='modal') cerrarModal(); });
        document.addEventListener('keydown', e => { if(e.key==='Escape') cerrarModal(); });
        document.addEventListener('DOMContentLoaded', initWeb);
    </script>
</body>
</html>
