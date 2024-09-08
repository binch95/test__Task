package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.AIQuestionService;

@RestController
@RequestMapping("/api/faq")
public class AIController { 

    @Autowired
    private AIQuestionService aiQuestionService;

    @GetMapping("/related")
    public ResponseEntity<?> getRelatedFaqs(@RequestParam String searchTerm) {
        try {
            List<String> relatedFaqs = aiQuestionService.getRelatedFaqs(searchTerm);
            System.out.println("SAdfsdf : " + relatedFaqs);
            return ResponseEntity.ok(relatedFaqs);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("관련 FAQ를 가져오는 중 오류가 발생했습니다.");
        }
    }

    @GetMapping("/answer")
    public ResponseEntity<?> getAnswerForFaq(@RequestParam String faqQuestion) {
        try {
            String answer = aiQuestionService.getAnswerForFaq(faqQuestion);
            return ResponseEntity.ok(answer);
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("답변을 가져오는 중 오류가 발생했습니다.");
        }
    }
}
