function updateCartCount() {
    const cart = JSON.parse(localStorage.getItem('cart') || '[]');
    const count = cart.reduce((sum, item) => sum + item.quantity, 0);
    const badge = document.getElementById('cart-count');
    if (badge) badge.textContent = count;
}

function addToCart(id, name, price, image_url) {
    let cart = JSON.parse(localStorage.getItem('cart') || '[]');
    const existing = cart.find(i => i.id === id);
    if (existing) {
        existing.quantity += 1;
    } else {
        cart.push({ id, name, price, image_url, quantity: 1 });
    }
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    
    // Feedback animation
    const btn = event.target;
    const originalText = btn.textContent;
    btn.textContent = 'In Bag';
    btn.style.background = '#282c3f'; // Dark AJIO color for "In Bag"
    setTimeout(() => {
        btn.textContent = originalText;
        btn.style.background = 'var(--primary)';
    }, 1000);
}
