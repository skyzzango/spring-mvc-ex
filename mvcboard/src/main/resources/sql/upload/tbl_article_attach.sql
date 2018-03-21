
-- 게시글 첨부파일 테이블 생성
CREATE TABLE tbl_article_attach (
  full_name VARCHAR(150) NOT NULL ,
  article_no INT NOT NULL ,
  reg_date TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY (full_name)
);

-- 게시글 첨부파일 테이블 참조키 설정
ALTER TABLE tbl_article_file ADD CONSTRAINT fk_article_attach
FOREIGN KEY (article_no) REFERENCES tbl_article (article_no);

-- 게시글 테이블 첨부파일 갯수 칼럼 추가
ALTER TABLE tbl_article ADD COLUMN attach_cnt INT DEFAULT 0;