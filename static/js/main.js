document.addEventListener('DOMContentLoaded', function () {
    const roomCards = document.querySelectorAll('.room-card');
    roomCards.forEach((card) => {
        card.addEventListener('click', () => {
            const room = card.dataset.room;
            alert('Bạn đang xem phòng: ' + room);
        });
    });

    const dateLabel = document.getElementById('current-date');
    if (dateLabel) {
        dateLabel.textContent = new Date().toLocaleDateString('vi-VN');
    }
});
