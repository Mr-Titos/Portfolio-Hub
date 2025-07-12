// Animation de la ligne centrale avec anime.js
anime({
    targets: '#animatedLine',
    scaleY: [0.2, 1],
    opacity: [0.5, 1],
    duration: 2400,
    easing: 'easeInOutQuart',
    direction: 'alternate',
    loop: true,
    boxShadow: [
        '0 0 20px #fff, 0 0 40px #ff512f',
        '0 0 40px #fff, 0 0 80px #dd2476'
    ]
});
