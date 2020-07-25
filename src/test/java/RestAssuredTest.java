//
//import static io.restassured.RestAssured.*;
//import static org.hamcrest.Matchers.*;
//
//import org.junit.Test;
//
//public class RestAssuredTest {
////    @RestAssuredTest
//    public void test_Md5CheckSumForTest_ShouldBe098f6bcd4621d373cade4e832627b4f6() {
//
//        String originalText = "test";
//        String expectedMd5CheckSum = "098f6bcd4621d373cade4e832627b4f6";
//
//        given().
//            param("text",originalText).
//        when().
//            get("http://md5.jsontest.com").
//        then().
//            assertThat().
//            body("md5",equalTo(expectedMd5CheckSum));
//    }
//    
//    @Test
//    public void test() {
//    	
//    }
//}
