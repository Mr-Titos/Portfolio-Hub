const colors = ['#ff073a', '#39ff14', '#00ffff', '#9d00ff', '#ffff00'];
let colorIndex = 0;

function animateDivider() {
    // Initialisation
    const el = document.querySelector('#animatedLine');
    el.style.background = colors[colorIndex];
    el.style.boxShadow = `0 0 10px ${colors[colorIndex]}, 0 0 20px ${colors[colorIndex]}, 0 0 30px ${colors[colorIndex]}`;
    
    anime.timeline({
        complete: function() {
            animateDivider();
        }
    })
    // Fade out and scale down the line
    .add({
        targets: '#animatedLine',
        scaleY: [1, 0],
        opacity: [1, 0],
        duration: 2000,
        easing: 'easeInOutQuart'
    })
    // Change color while line is invisible
    .add({
        targets: '#animatedLine',
        duration: 0,
        complete: function() {
            colorIndex = (colorIndex + 1) % colors.length;
            const el = document.querySelector('#animatedLine');
            el.style.background = colors[colorIndex];
            el.style.boxShadow = `0 0 10px ${colors[colorIndex]}, 0 0 20px ${colors[colorIndex]}, 0 0 30px ${colors[colorIndex]}`;
        }
    })
    // Fade in and scale up the line with new color
    .add({
        targets: '#animatedLine',
        scaleY: [0, 1],
        opacity: [0, 1],
        duration: 2000,
        easing: 'easeOutQuart'
    })
    // Hold the line visible for a pause
    .add({
        targets: '#animatedLine',
        duration: 2500
    });
}

animateDivider();