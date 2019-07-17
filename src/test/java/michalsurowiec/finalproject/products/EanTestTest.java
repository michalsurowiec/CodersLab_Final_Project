package michalsurowiec.finalproject.products;

import org.junit.Test;

import static org.junit.Assert.*;

public class EanTestTest {

    @Test
    public void isValid() {
        Long aLong = 90311015L;
        boolean result = false;
        String ean = aLong.toString();
        if(ean.length() == 13 || ean.length() == 8){
            int sum = 0;
            for(int i = 0; i < ean.length()-1; i++){
                if (i%2 == 0){
                    sum = sum + Integer.parseInt(ean.substring(i,i+1))*3;
                } else {
                    sum = sum + Integer.parseInt(ean.substring(i,i+1));
                }
            }
            if((10 - (sum % 10)) == Integer.parseInt(ean.substring(ean.length()-1))){
                result = true;
            }
        }
        assertTrue(result);
    }

}