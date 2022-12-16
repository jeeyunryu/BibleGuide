package com.example.board;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BoardVO {

    private String contents;
    private int chapter;
    private int verse;
    private String title;
    private String category;
    private Boolean isMemorized;
    private int stars;
    private Date regDate;
    private int id;

}
