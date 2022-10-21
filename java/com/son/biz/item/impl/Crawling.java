package com.son.biz.item.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.son.biz.util.JDBCUtil;

public class Crawling {

	Connection conn = JDBCUtil.connect();
	PreparedStatement pstmt = null;
	private WebDriver driver;
	private WebDriver driver2;
	private WebElement element;
	private String url;
	private String url2;

	// sql insert 코드(자동 increment)
	public static String sql_insert="INSERT INTO ITEM(IIMG,INAME,IPRICE,ICATEGORY,ICNT,IDATE) VALUES(?,?,?,?,?,now())";
	
	// chrome driver
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "D:\\0607SON\\webdriver\\chromedriver_win32\\chromedriver.exe";

	// 크롤링 driver 주소 및 id, url 입력 + 기본 생성자
	public Crawling() {
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking"); // 팝업창 띄우지 않기

		driver = new ChromeDriver(options); // option을 담은 chromedriver 설정 
		driver2 = new ChromeDriver(options); // option을 담은 chromedriver 설정

		url = "https://www.petbox.kr/main/index.php"; // 기본 url
		url2 = "https://www.petbox.kr"; // url에 붙일 기본 url
	}
	
	// 크롤링 작동
	public void activeBot() {

		try {
			driver.get(url);

			// url을 열고 나서 유예시간 추가
			Thread.sleep(1000);

			// 다음 경로의 element 저장할 list 제작
			List<WebElement> list = driver.findElements(By.cssSelector("ul.sub_depth2>li>a"));

			// list를 item에 넣어서 for문 돌리기(카테고리)
			for(WebElement item : list) {

				String tag = item.getAttribute("href").replace("..", url2);
				String pk = tag.replaceAll("[^0-9]","");
				
				driver2.get(tag);
				
				List<WebElement> list2 = driver2.findElements(By.className("item_cont"));

				// 카테고리 안에 제품 크롤링 및 저장
				for(WebElement item2 : list2) {

					pstmt=conn.prepareStatement(sql_insert);

					// 이미지 크롤링
					element = item2.findElement(By.cssSelector(".item_photo_box>a>img"));
					String picture = element.getAttribute("data-original");
					pstmt.setString(1,url2+picture);
					// 아이템 이름
					element = item2.findElement(By.cssSelector(".item_name"));
					String iname= element.getText();
					pstmt.setString(2, iname);
					// 아이템 가격
					element = item2.findElement(By.cssSelector(".item_price"));
					String price = element.getText();
					pstmt.setString(3, price);
					// pk 설정
					pstmt.setString(4,pk);
					// cnt 설정
					pstmt.setInt(5, 0);
					pstmt.executeUpdate();
				}
			}
			driver.close(); // driver는 작동 중 화면(크롤링한)만 꺼짐
			driver2.close(); // driver2는 작동 중 화면(크롤링한)만 꺼짐
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			driver.quit(); // driver 완전 종료
			driver2.quit(); // driver2 완전 종료
		}
	}

	public static void main(String[] args){
		Crawling ct = new Crawling();
		ct.activeBot();
	}
}
