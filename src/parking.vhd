library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all;


ENTITY parking IS
	PORT (clk, reset: IN std_logic;
	      
			-- ECHO DEI DUE SENSORI
			ECHO1, ECHO2: IN std_logic;
			
			-- VETTORE PASSWORD
			password: IN std_logic_vector(9 downto 0);
			
			-- TRIGGER PER I DUE SENSORI
	      trigger1, trigger2: OUT std_logic;
			
			-- LED ROSSO, VERDE E GIALLO
			ledr, ledg, ledy: OUT std_logic;
			
			-- USCITE CLOCK
			clk_out1, clk_out2, clk_out3: OUT std_logic;
			gate: OUT std_logic;
			
			-- DISPLAY A 7 SEGMENTI PER  OGNI STATO
			HEX1, HEX2, HEX3, HEX4 : OUT std_logic_vector(6 downto 0);
			
			-- BUZZER PER QUANDO SI SBAGLIA PASSWORD
			buzzer: OUT std_logic;

			--SERVO MOTORE  
			-- Regola generale Servo Motore:
			-- impulsi di 1ms (distanziati di 20ms) -> posizione 0°
			-- impulsi di 2ms (distanziati di 20ms) -> posizione 180°
			
			clk_servo1, clk_servo2, pwm : out std_logic
			
			);
			
			
			-- tastierino numerico per password
	
END ENTITY;


ARCHITECTURE struct OF parking IS

	TYPE state_values IS (initial, stpassword, stopen, stop);
	SIGNAL pres_state, next_state: state_values;
	
	SIGNAL counter: INTEGER := 1;  -- Clock 1s
	SIGNAL tmp: std_logic := '0'; 
	
	SIGNAL counter0: INTEGER := 1; -- Clock 1ms
	SIGNAL tmp0: std_logic := '0';
	
	SIGNAL counter1: INTEGER := 1; -- Clock 0.5ms per buzzer (frequenza -> suono)
	SIGNAL tmp1: std_logic := '0';
	
	SIGNAL counter2: INTEGER := 1; -- Clock per buzzer (per intermittenza)
	SIGNAL tmp2: std_logic := '0';
	
	-- Servo Motor Signals
	signal countservo1: integer:=1;             --
   signal countservo2: integer:=1;             --  For clock 
	
	signal tmpservo1: std_logic :='0';          --  servo motor
	signal tmpservo2: std_logic :='0';          -- 

	signal segnaleServoZero: std_logic :='0';        --  PWM Signals
	signal segnaleServoNovanta: std_logic :='0';
	
	
	-- Segnali per Sensori
	SIGNAL count11: std_logic_vector(17 downto 0);  -- Counter per distanza
	SIGNAL count22: std_logic_vector(17 downto 0);
	
	SIGNAL ECHO_in: std_logic_vector(1 downto 0);  -- Vettore Echo dei sensori
	
	SIGNAL x,y: std_logic;   -- x: Sensore di ingresso -- y: Sensore di uscita
	
	
	-- CLOCK PER STATE MACHINE (1s)
	BEGIN
		PROCESS (clk)
			BEGIN
				IF rising_edge(clk) THEN
					counter <= counter+1;
					IF counter = 25000000 THEN
						tmp <= not tmp;
						counter <= 0;
					END IF;
				END IF;
		END PROCESS;
		clk_out1 <= tmp;
		
		
		
	-- CLOCK PER SENSORI (1ms)
		PROCESS (clk)
			BEGIN
				IF rising_edge(clk) THEN
					counter0 <= counter0 + 1;
					IF counter0 = 25 THEN   
						tmp0 <= not tmp0;
						counter0 <= 0;
					END IF;
				END IF;
		END PROCESS;
		clk_out2 <= tmp0;
	
		
		
		-- FREQUENZA PER BUZZER (2 kHz)
		PROCESS (clk)
			BEGIN
				IF rising_edge(clk) THEN
					counter1 <= counter1 + 1;
					IF counter1 = 12500 THEN    -- 0.5 ms = 2 kHz
						tmp1 <= not tmp1;
						counter1 <= 0;
					END IF;
				END IF;
		END PROCESS;
		clk_out3 <= tmp1;
		
		
			-- CLOCK PER BUZZER (10ms)
		process(clk)
				begin
					if rising_edge(clk) then
						if counter2 <=  25000000 then   -- 1 secondo
							counter2 <= counter2 + 1;
						   tmp2 <= tmp1;

						elsif counter2 > 25000000 and counter2 < 50000000 then
						      counter2 <= counter2 + 1;
						      tmp2 <= '0';

						elsif counter2 = 50000000 then   -- 2 secondi
						counter2 <= 0;  
						end if;
					end if;
     end process;

	  
	  
	  -- PROCESSI PER SERVO MOTORE  
	  
	   -- SERVO MOTOR CLOCK
     process(clk)  
         begin
         if rising_edge(clk) then
              countservo1 <= countservo1 + 1;
          if countservo1 = 49999 THEN            -- 2 ms for a 1 ms pulse
            tmpservo1 <= not tmpservo1;
            countservo1 <= 0;
           END IF;
         END IF;
       END PROCESS;
       clk_servo1 <= tmpservo1;
     
     process(clk)  
         begin
         if rising_edge(clk) then
              countservo2 <= countservo2 + 1;
          if countservo2 = 74999 THEN            -- 3ms for a 1,5 ms pulse
            tmpservo2 <= not tmpservo2;
            countservo2 <= 0;
           END IF;
         END IF;
       END PROCESS;
       clk_servo2 <= tmpservo2;
		 
		 
   -- To produce a signal that generates a 1ms pulse every 20ms
	
		process (tmpservo1) 
			variable counts1: integer:= 0;  
				begin
					if rising_edge(tmpservo1) then
					   counts1 := counts1 + 1;
						if counts1 = 1 then            --2ms (1ms pulse)
							segnaleServoZero <= '1';     
						elsif counts1 > 1 then
                     segnaleServoZero <= '0';               
						end if;
    
						if counts1 = 10 then   -- 20ms                
							counts1 := 0;              
						end if;
					end if;
     END PROCESS;
    

	 -- To produce a signal that generates a 1,5ms pulse every 20ms
	 
	   process (tmpservo2)  
			variable counts2: integer:= 0;  
				begin
					if rising_edge(tmpservo2) then
					counts2 := counts2 + 1;
						if counts2 = 1 then              --3ms (1,5ms pulse)
							segnaleServoNovanta <= '1';
						elsif counts2 > 1 then
							segnaleServoNovanta <= '0';
						end if;
						
						if counts2 > 7 then  -- ≈20ms
							counts2:=0;                                  
						end if;
					end if;
		END PROCESS;		
		
		
  -- PROCESSI PER SENSORI
  
  -- TRIGGER PRIMO SENSORE
		process (tmp0)
           variable count1: integer:= 0;		
					begin
				    
						if rising_edge(tmp0) then
						
							if count1 = 0 then
								  
								  count11 <= "000000000000000000";    -- Creo il segnale per il trigger
								  trigger1 <= '1';
							
							elsif count1 = 10 then
								  trigger1 <= '0';
							
							end if;
							
							if ECHO1 = '1' then 
								count11 <= count11 + 1;
							end if;
							
							if count1 = 249999 then
								count1 := 0;
							else
								count1 := count1 + 1;
							end if;				
						end if;
	       end process;

			 
   -- TRIGGER SECONDO SENSORE
		process (tmp0)
		  
           variable count2: integer:= 0;		
			  
             begin
				    
					if rising_edge(tmp0) then
					
						if count2 = 124999 then
							  
							  count22 <= "000000000000000000";
							  trigger2 <= '1';
						
						elsif count2 = 125009 then
							  trigger2 <= '0';
						
						end if;
						
						if ECHO2 = '1' then 
							count22 <= count22 + 1;
						end if;
						
						if count2 = 249999 then
							count2 := 0;
						else
							count2 := count2 + 1;
						end if;				
					end if;
	       end process;
			 
			 
	 --SEGNALE ECHO DAI DUE SENSORI DI SICUREZZA
			 process (ECHO1,ECHO2)
	        
			   begin
	           
				   if falling_edge(ECHO1) then
						if count11 < 1000 then
								 x <= '1'; 
						else   
								 x <= '0';
						end if;	
					end if;
						
					if falling_edge(ECHO2) then
						if count22 < 1000 then
								 y <= '1';  		 
						else   
						       y <= '0';
						end if;	
					end if;
					
				end process;
										
						ECHO_in(0) <= x;
						ECHO_in(1) <= y;
						
						
						
	-- STATE MACHINE PER PARCHEGGIO
	statereg: PROCESS(tmp,reset)
	BEGIN
		IF (reset ='0') THEN
			pres_state <= initial;
		ELSIF rising_edge(tmp) THEN
			pres_state <= next_state;
		END IF;
	END PROCESS;

	
fsm: PROCESS(pres_state, ECHO_in)
	BEGIN
		CASE pres_state IS
				WHEN initial =>
					CASE ECHO_in IS
						WHEN "00" => next_state <= initial;
						WHEN "01" => next_state <= stpassword;
						WHEN "10" => next_state <= initial;
						WHEN "11" => next_state <= initial;
					END CASE;
				
				WHEN stpassword =>
					CASE ECHO_in IS
						WHEN "00" => next_state <= initial;
						WHEN "01" => CASE password IS
												WHEN "0000000001" => next_state <= stopen;
												WHEN OTHERS => next_state <= stpassword;
										 END CASE;
						WHEN "10" => next_state <= initial;
						WHEN "11" => next_state <= stpassword;
					END CASE;
					
				WHEN stopen =>
					CASE ECHO_in IS
						WHEN "00" => next_state <= initial;
						WHEN "01" => next_state <= stopen;
						WHEN "10" => next_state <= stopen;
						WHEN "11" => next_state <= stop;
					END CASE;
					
				WHEN stop =>
					CASE ECHO_in IS
						WHEN "00" => next_state <= initial;
						WHEN "01" => next_state <= stpassword;
						WHEN "10" => next_state <= stop;
						WHEN "11" => next_state <= stop;
					END CASE;
				
				WHEN OTHERS => next_state <= initial;
				
				END CASE;
			END PROCESS;
			
			
		outputs: PROCESS (pres_state, ECHO_in, tmp, tmp1)
			BEGIN
				CASE pres_state IS
					WHEN initial => ledr <= '1';  -- LED rosso acceso
									    ledg <= '0';  -- LED verde spento
									    ledy <= '0';  -- LED giallo spento
									 
									 -- BUZZER
									    buzzer <= '0';
										 
									-- SERVO MOTORE	 
										 pwm <= segnaleServoZero ;   -- Cancello chiuso (0°)
										 
										 
										 -- DISPLAY: A B C D E F G      		   G
										 --											B     F
										 --											   A
										 --											C     E
										 --											   D
										 -- '1' = off   -  '0' = on
																						
										    -- DISPLAY "HI"  
										  HEX1 <= "1001111"; -- I (1 a sinistra)
									 	  HEX2 <= "0001001"; -- H
										  HEX3 <= "1111111"; -- off
										  HEX4 <= "1111111"; -- off
						 
					WHEN stpassword => ledr <= '1';   -- LED rosso acceso
											 ledg <= '0';   -- LED verde spento
											 
											-- LED giallo lampeggiante
											 ledy <= tmp;    
											
											
											 CASE password IS
											   WHEN "0000000000" => NULL;  -- Per non fare suonare il buzzer appena entrati in questo stato
												WHEN "0000000001" => NULL;  -- Non serve fare nulla in quanto si passa allo stato STOPEN
												WHEN others => buzzer <= tmp2;  -- Buzzer suona ad intermittenza						
											 END CASE;
											 
											 
											 -- SERVO MOTORE	
											 
										  pwm <= segnaleServoZero ;   -- Gate closed (0°)
											 
											 -- DISPLAY "PASS"
										  HEX1 <= "0010010"; -- S (5)
									 	  HEX2 <= "0010010"; -- S (5)
										  HEX3 <= "0001000"; -- A
										  HEX4 <= "0001100"; -- P
					
					WHEN stopen => ledg <= '1'; --LED verde acceso
										ledy <= '0'; --LED giallO spento
										ledr <= '0'; --LED rossO spento
											
											
										-- SERVO MOTORE
										
										 pwm <= segnaleServoNovanta;   -- gate open (90°)
					
					
								    -- DISPLAY "GO IN"
										  HEX1 <= "1001000"; -- N  
										  HEX2 <= "1111001"; -- I (1 a destra)
										  HEX3 <= "1000000"; -- O (0)
									 	  HEX4 <= "0000010"; -- G (6)
										 
						
					WHEN stop => ledg <= '1';  --LED verde acceso
									 ledy <= '0';  --LED giallo spento
									 ledr <= tmp;  -- LED rosso lampeggiante
									 
									 -- BUZZER
									    buzzer <= '0';
										 
									-- SERVO MOTORE
										 pwm <= segnaleServoNovanta;   -- Cancello aperto (~ 90°)
					
									-- DISPLAY "STOP"
										  HEX1 <= "0001100"; -- P
									 	  HEX2 <= "1000000"; -- O (0)
										  HEX3 <= "0000111"; -- t 
										  HEX4 <= "0010010"; -- S (5)
					
					WHEN others => ledg <= '0';
				END CASE;
			END PROCESS;

END ARCHITECTURE;	