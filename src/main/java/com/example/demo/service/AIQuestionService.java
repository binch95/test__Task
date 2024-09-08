package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service
public class AIQuestionService {

    @Autowired
    private CsvService csvService;

    public List<String> getRelatedFaqs(String searchTerm) throws IOException {
        Map<String, String> faqMap = csvService.getFaqData();
        List<String> relatedFaqs = new ArrayList<>();
        for(String asdf : faqMap.keySet()) {
        	System.out.print(asdf);
        }
        // 검색어가 포함된 질문 찾기
        for (String question : faqMap.keySet()) {
            if (question.toLowerCase().contains(searchTerm.toLowerCase())) {
                relatedFaqs.add(question);
            }
        }

        return relatedFaqs;
    }

    public String getAnswerForFaq(String faqQuestion) throws IOException {
        Map<String, String> faqMap = csvService.getFaqData();
        return faqMap.getOrDefault(faqQuestion, "Sorry, I couldn't find the information you're looking for.");
    }
}