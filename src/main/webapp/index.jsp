<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly commerce</title>
  <!-- Inter & Playfair -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- reset & base (softer, more breathable) ----- */
    * { margin:0; padding:0; box-sizing:border-box; }
    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #fcfcf9;
      color: #1e1e2a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; height: auto; }
    button { font: inherit; border: none; background: none; cursor: pointer; color: inherit; }
    input { font: inherit; }

    .container {
      max-width: 1260px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ----- softer variables ----- */
    :root {
      --bg: #fcfcf9;
      --card: #ffffff;
      --surface: #f2f0ed;
      --primary: #1e1e2a;
      --primary-soft: #2b2b3c;
      --accent: #c97b5e;
      --accent-light: #f0d6cb;
      --accent-dark: #b05f43;
      --muted: #6a6a7a;
      --muted-light: #a8a8b8;
      --shadow: 0 6px 28px rgba(0,0,0,0.03), 0 2px 8px rgba(0,0,0,0.02);
      --shadow-hover: 0 14px 44px rgba(0,0,0,0.06);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.25s cubic-bezier(0.2,0,0,1);
    }

    /* ----- buttons (rounded, friendly) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      padding: 0.75rem 1.8rem;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: 2px solid transparent;
      transition: var(--transition);
      letter-spacing: -0.01em;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 10px 28px rgba(201, 123, 94, 0.25);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-soft);
      border-color: var(--primary-soft);
      transform: translateY(-2px);
      box-shadow: 0 10px 28px rgba(30,30,42,0.15);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(30,30,42,0.12);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.12);
      color: #fff;
      border-color: rgba(255,255,255,0.2);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.22);
      border-color: rgba(255,255,255,0.35);
      transform: translateY(-2px);
    }
    .btn-sm {
      padding: 0.5rem 1.2rem;
      font-size: 0.85rem;
    }

    /* ----- header (lighter, airy) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,251,0.88);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 10px 0;
      min-height: 66px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 1.3rem;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand .accent { color: var(--accent); }
    .brand i { font-size: 1.4rem; color: var(--accent); }

    nav.main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 0.5rem 1rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }
    nav.main-nav li a i { font-size: 0.9rem; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      font-size: 1.1rem;
      color: var(--muted);
      transition: var(--transition);
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      width: 19px;
      height: 19px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 6px 0 16px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(201,123,94,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 0.6rem 0;
      width: 100%;
      font-size: 0.9rem;
      outline: none;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 0.5rem 0.6rem 0.5rem 0.8rem;
      color: var(--muted);
      transition: var(--transition);
      font-size: 1rem;
    }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--surface);
      font-size: 1.2rem;
      color: var(--primary);
    }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0,0,0,0.02);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 0.7rem 1rem;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
    }
    #mobileMenu ul li a:hover { background: var(--surface); }
    #mobileMenu ul li a i { width: 24px; color: var(--muted); }

    /* ----- hero (warmer, spacious) ----- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 420px;
      padding: 48px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 16px 20px 0;
      background: linear-gradient(145deg, #1e1e2a 0%, #333348 100%);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.30;
    }
    .hero .container { position: relative; z-index: 2; }
    .hero .badge {
      display: inline-block;
      background: rgba(201,123,94,0.2);
      color: var(--accent);
      padding: 0.2rem 1.2rem;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.3px;
      margin-bottom: 12px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 3.2rem;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 560px;
      margin-bottom: 12px;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 1.05rem;
      max-width: 460px;
      margin-bottom: 24px;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* ----- sections (gentle spacing) ----- */
    .section { padding: 48px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 28px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 2px;
      font-size: 0.95rem;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      white-space: nowrap;
      transition: var(--transition);
    }
    .view-all:hover { gap: 12px; color: var(--accent-dark); }

    /* categories (pill style) */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 1.4rem 0.8rem;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 2px solid transparent;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 1.4rem;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 { font-size: 0.95rem; font-weight: 600; }
    .cat-card .count { font-size: 0.8rem; color: var(--muted); margin-top: 2px; }

    /* products (cards with more whitespace) */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.03); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 0.15rem 0.9rem;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: #e9b35f; color: var(--primary); }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      display: grid;
      place-items: center;
      font-size: 0.95rem;
      color: var(--muted);
      backdrop-filter: blur(4px);
      transition: var(--transition);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 1rem 1rem 0.4rem;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 0.7rem;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      line-height: 1.3;
      margin: 2px 0 4px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 2px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 1.1rem;
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #e9b35f;
      margin-top: 4px;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0.2rem 1rem 1rem;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 0.6rem 0.4rem;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 0.85rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
    }
    .product-card .footer .add-btn.added { background: #2d9b7a; }

    /* deal (softer) */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: var(--surface);
      min-height: 260px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 2.2rem 2.4rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: #e9b35f;
      color: var(--primary);
      padding: 0.15rem 1rem;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 { font-size: 1.8rem; font-weight: 700; margin-bottom: 4px; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 12px; }
    .deal-wrap .deal-content .price-big {
      font-size: 2rem;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 1.1rem;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 8px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 0.9rem;
      color: var(--muted);
      margin: 2px 0 12px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 8px 0 16px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 0.4rem 0.8rem;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num { font-size: 1.5rem; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 0.6rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.4px; }

    /* testimonials (scroll) */
    .testimonials-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-light); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 1.4rem 1.6rem;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial-card .stars { color: #e9b35f; font-size: 0.9rem; letter-spacing: 2px; margin-bottom: 8px; }
    .testimonial-card blockquote {
      font-size: 0.95rem;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 12px;
      font-style: italic;
    }
    .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
    .testimonial-card .author .avatar {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 0.9rem; }
    .testimonial-card .author .role { font-size: 0.8rem; color: var(--muted); }

    /* newsletter (soft) */
    .newsletter-wrap {
      background: linear-gradient(145deg, #1e1e2a, #34344a);
      border-radius: var(--radius);
      padding: 2.8rem 3rem;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 { font-size: 1.6rem; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { opacity: 0.75; font-size: 0.95rem; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex: 1;
      max-width: 480px;
      flex-wrap: wrap;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 180px;
      padding: 0.8rem 1.2rem;
      border-radius: 60px;
      border: 0;
      font-size: 0.95rem;
      background: rgba(255,255,255,0.08);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.45); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.14);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 0.8rem 1.8rem;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg { margin-top: 10px; font-size: 0.9rem; opacity: 0.9; width: 100%; }

    /* footer */
    footer {
      margin-top: 12px;
      padding: 2.6rem 0 1.6rem;
      border-top: 1px solid rgba(0,0,0,0.02);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 2.4rem;
      margin-bottom: 2rem;
    }
    .footer-grid .brand-col .brand { font-size: 1.2rem; margin-bottom: 4px; }
    .footer-grid .brand-col p { color: var(--muted); font-size: 0.9rem; max-width: 280px; line-height: 1.6; }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 8px;
      margin-top: 12px;
    }
    .footer-grid .brand-col .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 0.9rem; margin-bottom: 10px; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 4px; }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 0.9rem;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 1.2rem;
      border-top: 1px solid rgba(0,0,0,0.02);
      color: var(--muted-light);
      font-size: 0.8rem;
    }

    /* responsive */
    @media (max-width: 1100px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 900px) {
      .hero h1 { font-size: 2.4rem; }
      .hero { min-height: 340px; padding: 36px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 1.6rem 1.8rem; }
      .search-wrap { min-width: 140px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2,1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2,1fr); }
      .hero { margin: 12px 12px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 2rem; }
      .section { padding: 32px 0; }
      .footer-grid { grid-template-columns: 1fr; gap: 1.2rem; }
      .newsletter-wrap { padding: 1.8rem 1.4rem; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .testimonial-card { flex: 0 0 260px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero { margin: 8px 8px 0; padding: 24px 0; min-height: 280px; }
      .hero h1 { font-size: 1.6rem; }
      .container { padding: 0 12px; }
      .deal-wrap .deal-content { padding: 1rem 1rem; }
      .deal-wrap .deal-img { flex: 0 0 140px; }
      .product-card .body { padding: 0.6rem 0.6rem 0.2rem; }
      .product-card .body h5 { font-size: 0.8rem; }
      .product-card .body .price { font-size: 0.95rem; }
      .product-card .footer { padding: 0.2rem 0.6rem 0.6rem; }
      .product-card .footer .add-btn { font-size: 0.75rem; padding: 0.4rem 0.2rem; }
      .timer-box { min-width: 46px; padding: 0.2rem 0.4rem; }
      .timer-box .num { font-size: 1.1rem; }
      .cat-card { padding: 0.8rem 0.4rem; }
      .cat-card .icon-wrap { width: 40px; height: 40px; font-size: 1.1rem; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav" aria-label="Main">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero" aria-label="Hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Premium picks,<br>made simple</h1>
      <p>Curated fashion, tech & accessories. Free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="cat-title">Browse Categories</h2><p>Find exactly what you love</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group"><h2 id="prod-title">Trending Now</h2><p>Popular picks from our community</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group
