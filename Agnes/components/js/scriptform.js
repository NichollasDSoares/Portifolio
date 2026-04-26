document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('questionForm');
    const questions = form.querySelectorAll('.question');
    let currentQuestion = 0;

    questions[currentQuestion].classList.add('active');

    form.addEventListener('keydown', (e) => {
        if (e.key === 'Enter') {
            e.preventDefault();
            if (currentQuestion < questions.length - 1) {
                currentQuestion++;
                questions[currentQuestion].classList.add('active');
            }
        }
    });

    
});
