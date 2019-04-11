--************************
--name   : cmtm_200.lua
--ver    : 0.1
--author : Ferron
--date   : 2004/07/15
--lang   : en
--desc	 : Hacknet QuickJobs Process Kill
--npc    : Task Manager - Process Kill
--************************
--changelog:
--2004/09/23(0.1): recheck(Ferron)
--************************

--
--i am :  CM
my_fac = 11


--tm_200 = "CA Task Manager"
--tm_200 = "DRE Task Manager"
--tm_200 = "NX Task Manager"
--tm_200 = "BT Task Manager"
--tm_200 = "TT Task Manager"
--tm_200 = "PP Task Manager"
--tm_200 = "TS Task Manager"
--tm_200 = "BD Task Manager"
--tm_200 = "CS Task Manager"
tm_200 = "CM Task Manager"
--tm_200 = "FA Task Manager"
--tm_200 = "TG Task Manager"


-------



---GETFACTION functions

function CANDOEPICRUN( factionid, missionid)
	if (node==state) then
		SendScriptMsg("candoepicrun", dialogclass, factionid, missionid)
	end
end

function GETFACTIONID()
	CANDOEPICRUN(1,0)
	if (result~=-1) then
		result = 1
		return
	end
	CANDOEPICRUN(2,0)
	if (result~=-1) then
		result = 2
		return
	end	
	CANDOEPICRUN(3,0)
	if (result~=-1) then
		result = 3
		return
	end
	CANDOEPICRUN(4,0)
	if (result~=-1) then
		result = 4
		return
	end
	CANDOEPICRUN(5,0)
	if (result~=-1) then
		result = 5
		return
	end
	CANDOEPICRUN(6,0)
	if (result~=-1) then
		result = 6
		return
	end
	CANDOEPICRUN(8,0)
	if (result~=-1) then
		result = 8
		return
	end
	CANDOEPICRUN(9,0)
	if (result~=-1) then
		result = 9
		return
	end
	CANDOEPICRUN(10,0)
	if (result~=-1) then
		result = 10
		return
	end
	CANDOEPICRUN(11,0)
	if (result~=-1) then
		result = 11
		return
	end
	CANDOEPICRUN(14,0)
	if (result~=-1) then
		result = 14
		return
	end
	CANDOEPICRUN(15,0)
	if (result~=-1) then
		result = 15
		return
	end
end

---------

---LEVEL Setter

function SETLEVEL(level)

	if (level <= 2) then
	--very easy / easy enemys 
		--static, flying
		--Corrupt UDP/TCP  lvl 1
		tcp1_id = 5150 ;
		tcp1_name = "Corrupt TCP Packet v0.2.1"	;	
		udp1_id = 5153 ; 
		udp1_name = "Corrupt UDP Packet v1.2.1" ;
			
	elseif (level == 3) then
	--normal enemys
		--Corrupt UDP/TCP  lvl 1
		tcp1_id = 5150 ;
		tcp1_name = "Corrupt TCP Packet v0.2.1"	;	
		udp1_id = 5153 ;
		udp1_name = "Corrupt UDP Packet v1.2.1" ;
		--Corrupt UDP/TCP lvl 2
		tcp2_id = 5151 ; 
		tcp2_name = "Corrupt TCP Packet v0.2.2" ;
		udp2_id = 5154 ; 
		udp2_name = "Corrupt UDP Packet v1.2.2" ;
	
	elseif (level == 4) then
	--hard enemys 
		--Corrupt UDP/TCP lvl 2
		tcp2_id = 5151 ; 
		tcp2_name = "Corrupt TCP Packet v0.2.2" ;
		udp2_id = 5154 ; 
		udp2_name = "Corrupt UDP Packet v1.2.2" ;
		--Corrupt Packets lvl 3
		tcp3_id = 5152 ; 
		tcp3_name = "Corrupt TCP Packet v0.2.3" ;
		udp3_id = 5155 ; 
		udp3_name = "Corrupt UDP Packet v1.2.3" ;
	
	elseif (level == 5) then
	--very hard enemys
		--Corrupt UDP/TCP Packets lvl 3
		tcp3_id = 5152 ; 
		tcp3_name = "Corrupt TCP Packet v0.2.3" ;
		udp3_id = 5155 ; 
		udp3_name = "Corrupt UDP Packet v1.2.3" ;
		
		--Corrupt ICMP Ping Packet static, flying
		--lvl 1	
		icmpv21_id = 5200 ; 
		icmpv21_name = "Corrupt ICMP Ping Packet v2.1.1" ;
		icmpv31_id = 5203 ; 
		icmpv31_name = "Corrupt ICMP Ping Packet v3.1.1" ;
		
	end
end

----
-- JOB randomizer 
-- random through the jobs and get 3
-- TAKE CARE!! function assumes your jobs start with 10  NOT with 0 !!!

function JOBRAND(jobs, level)
	--  get one not at beginning or end
	RAND(jobs - 2)
	mitte = result
	jobchoose1 = mitte + 11
	--  get one left of the middle one
	RAND(mitte + 1)
	jobchoose2 = result + 10
	-- get one right of the middle one
	RAND(jobs - mitte)
	jobchoose3 = 9 + jobs - result
	
	return jobchoose1, jobchoose2, jobchoose3
	
end



----

function DIALOG()

--Start and choose mission level from Task Manager
NODE(0)
   if (state==node) then
	--check runner fac
	GETFACTIONID()
	runner_fac = result
	
	--get his symp to me
	GETFACTIONSYMPATHY(my_fac)
	runner_symp = result
	
	--if he is over 10 i like him
  	if (runner_symp >= 10) then
  		SAY("Connecting ...... Link established ...... System ready ......\n" .. tm_200 .. " version 2.0.1.4")
		ANSWER("       - Continue.", 10)
	else
		SAY("Access denied.")
		ENDDIALOG()
	end

   end		

NODE(10)
	SAY("\nChoose Level:")
	ANSWER("       - Task Level: 0x00-0x02 - very easy ", 100)
	ANSWER("       - Task Level: 0x03-0x05 - easy", 300)
	ANSWER("       - Task Level: 0x06-0x08 - normal", 500)
	ANSWER("       - Task Level: 0x09-0x0B - hard", 700)
	ANSWER("       - Task Level: 0x0C-0x0F - very hard", 900)
	ANSWER("ABORT", 90)
  	
--abort thread
NODE(90)
	SAY("Abort Signal catched ... closing link")
	ENDDIALOG()





--###############
--VERY EASY--
--Reward: 100nc

--Random Node choosing the mission from available and telling first 3
NODE(100)
   if (state==node) then
		
	--register level 1 mobs
	SETLEVEL(1)
	
	--job descriptions per job nr. - write down type of mobs to be killed at least
	local job_ptype = {} ;
	job_ptype[10] = " Terminate 5 " .. tcp1_name .. " EOF";
	job_ptype[11] = " Terminate 5 " .. udp1_name .. " EOF";
	job_ptype[12] = " Kill 3 " .. tcp1_name .. " and 3 " .. udp1_name .. " EOF";
	job_ptype[13] = " job description no4 " ;
	job_ptype[14] = " job description no5 " ;
	job_ptype[15] = " job description no6 " ;
			
	--number of defined jobs
	jobs_level01 = 3
	
	--get 3 random jobs
	jobchoose1, jobchoose2, jobchoose3 = JOBRAND(jobs_level01, 1)
	
	SAY("Task ID: int x" .. jobchoose1 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose1] .. " \n Task ID: int x" .. jobchoose2 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose2] .. " \n Task ID: int x" .. jobchoose3 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose3] .. " EOF ")
	ANSWER("Register " ..jobchoose1.. " REQ ACK .", (jobchoose1 + 100))
	ANSWER("Register " ..jobchoose2.. " REQ ACK .", (jobchoose2 + 100))
	ANSWER("Register " ..jobchoose3.. " REQ ACK .", (jobchoose3 + 100))
	
			
   end	
	
NODE(110)
   if (state==node) then
   	missionid = 4500
   	SAY("\n Task ID: 10 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() . ")	
	ANSWER("ABORT", 100)
	SAY("ACCEPT", 290)
   end

NODE(111)
   if (state==node) then
   	missionid = 4501
   	SAY("\n Task ID: 11 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() . ")	
	ANSWER("ABORT", 100)
   end   

NODE(112)
   if (state==node) then
   	missionid = 4502
   	SAY("\n Task ID: 12 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 100)
   end


NODE(290)
	--accept mission choosed
	STARTMISSION(missionid)	
	SAY("Sending Mission Data .. Done .. Closing Link.")
	ENDDIALOG()
	
--###############
--EASY--
--Reward: 200nc

--if he is over 25 i like him
NODE(300)
  	if (runner_symp >= 25) then
  		SAY("Connecting ...... Link established ...... SubSystem ready ......\n" .. tm_200 .. " version 2.0.1.4")
		ANSWER("       - Continue.", 301)
	else
		SAY("Access to SubSystem denied.")
		ANSWER("ACK . cd ../", 10)
		ANSWER("ABORT", 90)
		ENDDIALOG()
	end

--Random Node choosing the mission from available and telling first 3
NODE(301)
   if (state==node) then
		
	--register level 2 mobs
	SETLEVEL(2)
	
	--job descriptions per job nr. - write down type of mobs to be killed at least
	local job_ptype = {} ;
	job_ptype[10] = " Terminate 10 " .. tcp1_name .. " EOF";
	job_ptype[11] = " Terminate 10 " .. udp1_name .. " EOF" ;
	job_ptype[12] = " Kill 5 " .. tcp1_name .. " and 5 " .. udp1_name .. " EOF" ;
	job_ptype[13] = " job description no4 " ;
	job_ptype[14] = " job description no5 " ;
	job_ptype[15] = " job description no6 " ;
		
	--number of defined jobs
	jobs_level02 = 3
	
	--get 3 random jobs
	jobchoose1, jobchoose2, jobchoose3 = JOBRAND(jobs_level02, 2)
	
	SAY("Task ID: int x" .. jobchoose1 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose1] .. " \n Task ID: int x" .. jobchoose2 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose2] .. " \n Task ID: int x" .. jobchoose3 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose3] .. " EOF ")
	ANSWER("Register " ..jobchoose1.. " REQ ACK .", (jobchoose1 + 300))
	ANSWER("Register " ..jobchoose2.. " REQ ACK .", (jobchoose2 + 300))
	ANSWER("Register " ..jobchoose3.. " REQ ACK .", (jobchoose3 + 300))
	
			
   end		
	
NODE(310)
   if (state==node) then
   	missionid = 4572
   	SAY("\n Task ID: 10 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 300)
	SAY("ACCEPT", 490)
   end

NODE(311)
   if (state==node) then
   	missionid = 4573
   	SAY("\n Task ID: 11 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 300)
	SAY("ACCEPT", 490)
   end   

NODE(312)
   if (state==node) then
   	missionid = 4574
   	SAY("\n Task ID: 12 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 300)
	SAY("ACCEPT", 490)
   end

NODE(490)
	--accept mission choosed
	STARTMISSION(missionid)	
	SAY("Sending Mission Data .. Done .. Closing Link.")
	ENDDIALOG()



--###############
--NORMAL--
--Reward: 300nc

--if he is over 45 i like him
NODE(500)
  	if (runner_symp >= 45) then
  		SAY("Connecting ...... Link established ...... SubSystem ready ......\n" .. tm_200 .. " version 2.0.1.4")
		ANSWER("       - Continue.", 501)
	else
		SAY("Access to SubSystem denied.")
		ANSWER("ACK . cd ../", 10)
		ANSWER("ABORT", 90)
		ENDDIALOG()
	end

--Random Node choosing the mission from available and telling first 3

NODE(501)
   if (state==node) then
	
	--register level 3 mobs
	SETLEVEL(3)
	
	--job descriptions per job nr. - write down type of mobs to be killed at least
	local job_ptype = {} ;
	job_ptype[10] = " Terminate 3 " .. tcp1_name .. " and 2 " .. tcp2_name .. " EOF";
	job_ptype[11] = " Terminate 3 " .. udp1_name .. " and 2 " .. udp2_name .. " EOF";
	job_ptype[12] = " Kill 3 " .. tcp2_name .. " and 3 " .. udp2_name .. " EOF";
	job_ptype[13] = " job description no4 " ;
	job_ptype[14] = " job description no5 " ;
	job_ptype[15] = " job description no6 " ;
		
	--number of defined jobs
	jobs_level03 = 3
	
	--get 3 random jobs
	jobchoose1, jobchoose2, jobchoose3 = JOBRAND(jobs_level03, 3)
	
	SAY("Task ID: int x" .. jobchoose1 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose1] .. " \n Task ID: int x" .. jobchoose2 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose2] .. " \n Task ID: int x" .. jobchoose3 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose3] .. " EOF ")
	ANSWER("Register " ..jobchoose1.. " REQ ACK .", (jobchoose1 + 500))
	ANSWER("Register " ..jobchoose2.. " REQ ACK .", (jobchoose2 + 500))
	ANSWER("Register " ..jobchoose3.. " REQ ACK .", (jobchoose3 + 500))
	
			
   end		
	
NODE(510)
   if (state==node) then
   	missionid = 4644
   	SAY("\n Task ID: 10 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 500)
	SAY("ACCEPT", 690)
   end

NODE(511)
   if (state==node) then
   	missionid = 4645
   	SAY("\n Task ID: 11 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 500)
	SAY("ACCEPT", 690)
   end   

NODE(512)
   if (state==node) then
   	missionid = 4646
   	SAY("\n Task ID: 12 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 500)
	SAY("ACCEPT", 690)
   end

NODE(690)
	--accept mission choosed
	STARTMISSION(missionid)	
	SAY("Sending Mission Data .. Done .. Closing Link.")
	ENDDIALOG()
	

--###############
--HARD--
--Reward: 500nc

--if he is over 60 i like him
NODE(700)
  	if (runner_symp >= 60) then
  		SAY("Connecting ...... Link established ...... SubSystem ready ......\n" .. tm_200 .. " version 2.0.1.4")
		ANSWER("       - Continue.", 701)
	else
		SAY("Access to SubSystem denied.")
		ANSWER("ACK . cd ../", 10)
		ANSWER("ABORT", 90)
		ENDDIALOG()
	end

--Random Node choosing the mission from available and telling first 3
NODE(701)
   if (state==node) then
	
	--register level 4 mobs
	SETLEVEL(4)
		
	--job descriptions per job nr. - write down type of mobs to be killed at least
	local job_ptype = {} ;
	job_ptype[10] = " Terminate 3 " .. tcp2_name .. " and 2 " .. tcp3_name .. " EOF";
	job_ptype[11] = " Terminate 3 " .. udp2_name .. " and 2 " .. udp3_name .. " EOF";
	job_ptype[12] = " Kill 3 " .. tcp3_name .. " and 3 " .. udp3_name .. " EOF";	
	job_ptype[13] = " job description no4 " ;
	job_ptype[14] = " job description no5 " ;
	job_ptype[15] = " job description no6 " ;
		
	--number of defined jobs
	jobs_level04 = 3
	
	--get 3 random jobs
	jobchoose1, jobchoose2, jobchoose3 = JOBRAND(jobs_level04, 4)
	
	SAY("Task ID: int x" .. jobchoose1 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose1] .. " \n Task ID: int x" .. jobchoose2 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose2] .. " \n Task ID: int x" .. jobchoose3 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose3] .. " EOF ")
	ANSWER("Register " ..jobchoose1.. " REQ ACK .", (jobchoose1 + 700))
	ANSWER("Register " ..jobchoose2.. " REQ ACK .", (jobchoose2 + 700))
	ANSWER("Register " ..jobchoose3.. " REQ ACK .", (jobchoose3 + 700))
	
			
   end		
	
NODE(710)
   if (state==node) then
   	missionid = 4716
   	SAY("\n Task ID: 10 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 700)
	SAY("ACCEPT", 890)
   end

NODE(711)
   if (state==node) then
   	missionid = 4717
   	SAY("\n Task ID: 11 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 700)
	SAY("ACCEPT", 890)
   end   

NODE(712)
   if (state==node) then
   	missionid = 4718
   	SAY("\n Task ID: 12 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 700)
	SAY("ACCEPT", 890)
   end

NODE(890)
	--accept mission choosed
	STARTMISSION(missionid)	
	SAY("Sending Mission Data .. Done .. Closing Link.")
	ENDDIALOG()


--###############
--VERY HARD--
--Reward: 1000nc

--if he is over 60 i like him
NODE(900)
  	if (runner_symp >= 75) then
  		SAY("Connecting ...... Link established ...... SubSystem ready ......\n" .. tm_200 .. " version 2.0.1.4")
		ANSWER("       - Continue.", 901)
	else
		SAY("Access to SubSystem denied.")
		ANSWER("ACK . cd ../", 10)
		ANSWER("ABORT", 90)
		ENDDIALOG()
	end


--Random Node choosing the mission from available and telling first 2
NODE(901)
   if (state==node) then
	
	--register level 5 mobs
	SETLEVEL(5)
		
	--job descriptions per job nr. - write down type of mobs to be killed at least
	local job_ptype = {} ;
	job_ptype[10] = " Terminate 8 " .. tcp3_name .. " EOF";
	job_ptype[11] = " Terminate 8 " .. udp3_name .. " EOF" ;
	job_ptype[12] = " Kill 4 " .. icmpv21_name .. " and 4 " .. icmpv31_name .. " EOF" ;
	job_ptype[13] = " job description no4 " ;
	job_ptype[14] = " job description no5 " ;
	job_ptype[15] = " job description no6 " ;
		
	--number of defined jobs
	jobs_level05 = 3
	
	--get 3 random jobs
	jobchoose1, jobchoose2, jobchoose3 = JOBRAND(jobs_level05, 5)
	
	SAY("Task ID: int x" .. jobchoose1 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose1] .. " \n Task ID: int x" .. jobchoose2 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose2] .. " \n Task ID: int x" .. jobchoose3 .. "  kill -s SIGKILL , type: " .. job_ptype[jobchoose3] .. " EOF ")
	ANSWER("Register " ..jobchoose1.. " REQ ACK .", (jobchoose1 + 900))
	ANSWER("Register " ..jobchoose2.. " REQ ACK .", (jobchoose2 + 900))
	ANSWER("Register " ..jobchoose3.. " REQ ACK .", (jobchoose3 + 900))
	
			
   end		
	
NODE(910)
   if (state==node) then
   	missionid = 4788
   	SAY("\n Task ID: 10 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 900)
	SAY("ACCEPT", 1090)
   end

NODE(911)
   if (state==node) then
   	missionid = 4789
   	SAY("\n Task ID: 11 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 900)
	SAY("ACCEPT", 1090)
   end   

NODE(912)
   if (state==node) then
   	missionid = 4790
   	SAY("\n Task ID: 12 \n Protocol: Transfer \n Task Item: kill process: %TARGET_VALUE(2,0) of %TARGET_NPCNAME(0) and %TARGET_VALUE(2,1) of %TARGET_NPCNAME(1) . Time: %MISSION_TIME() . Reward: %REWARD_MONEY() .  ")	
	ANSWER("ABORT", 900)
	SAY("ACCEPT", 1090)
   end

NODE(1090)
	--accept mission choosed
	STARTMISSION(missionid)	
	SAY("Sending Mission Data .. Done .. Closing Link.")
	ENDDIALOG()

end