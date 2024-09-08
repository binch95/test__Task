async function fetchRelatedFaqs() {
           const searchTerm = document.getElementById('questionInput').value;
           const response = await fetch(`/api/faq/related?searchTerm=${encodeURIComponent(searchTerm)}`);
           if (response.ok) {
               const faqs = await response.json();
               const faqList = document.getElementById('faqList');
               faqList.innerHTML = '';
               faqs.forEach(faq => {
                   const li = document.createElement('li');
                   li.textContent = faq;
                   li.onclick = () => fetchAnswer(faq);
                   faqList.appendChild(li);
               });
           } else {
               document.getElementById('answer').textContent = '관련 FAQ를 가져오는 중 오류가 발생했습니다.';
           }
       }

       async function fetchAnswer(faqQuestion) {
           const response = await fetch(`/api/faq/answer?faqQuestion=${encodeURIComponent(faqQuestion)}`);
           if (response.ok) {
               const answer = await response.text();
               document.getElementById('answer').textContent = answer;
           } else {
               document.getElementById('answer').textContent = '답변을 가져오는 중 오류가 발생했습니다.';
           }
       }