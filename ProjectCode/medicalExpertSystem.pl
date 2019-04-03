start:-
	write('Welcome to our Medical Expert System'),nl,nl,
	write('How can I help you?'),nl,nl,

	write('		1. Want to diagnose disease'),nl,nl,
	write('		2. Online medical help'),nl,nl,
	write('		3. Near by Doctor''s address'),nl,nl,
	write('		4. Exit'),nl,nl,
	write('Write option(1, 2, 3, 4 etc.): '),
	read(Option),
	option(Option).
	
start:-
	write('Invalid input.'),nl,nl,
	write('Please try again!'),nl,nl,
	write('		1. Want to diagnose disease'),nl,nl,
	write('		2. Online medical help'),nl,nl,
	write('		3. Near by Doctor''s address'),nl,nl,
	write('		4.Exit'),nl,nl,
	write('Write option(1, 2, 3, 4 etc.): '),
	read(Option),
	option(Option).

option(1):-

	write('What is patient''s name?'),nl,nl,
	read(Patient_Name),

	write('Age?'),nl,nl,
	read(Age),

	write('Gender?'),nl,nl,
	read(Gender),


	write('Which type of problem patient is facing?'),nl,nl,
	write('Choose any option given below: '),nl,nl,
	write('		1. Fever'),nl,nl,
	write('		2. Cough'),nl,nl,
	write('		3. Runny Nose'),nl,nl,
	write('		4. Eye'),nl,nl,
	write('		5. Ear'),nl,nl,
	write('		6. Headache'),nl,nl,
	write('		7. Skin disease'),nl,nl,
	write('		8. Tooth'),nl,nl,
	write('		9. Pain in body parts other than head'),nl,nl,
	
	read(Opt1),
	choose(Patient_Name,Opt1).

		choose(Patient_Name,1):-
		
			%Fever
			premise(Patient_Name,Disease,1),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,2):-

			%Cough
			premise(Patient_Name,Disease,2),
			write_list([Patient_Name, 'probably has ',Disease,'.']),nl.

		choose(Patient_Name,3):-
		
			%RunnyNose
			%Common_cold
			premise(Patient_Name,Disease,3),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,4):-
		
			%Eye
			premise(Patient_Name,Disease,4),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,5):-
		
			%Ear
			premise(Patient_Name,Disease,5),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,6):-
		
			%Headache
			premise(Patient_Name,Disease,6),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,7):-
		
			%SkinDisease
			premise(Patient_Name,Disease,7),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

		choose(Patient_Name,8):-
		
			%Tooth
			premise(Patient_Name,Disease,8),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.
			

		choose(Patient_Name,9):-

			write('Select body part: '),nl,nl,
			write('		1.  Eye'),nl,nl,
			write('		2.  Ear'),nl,nl,
			write('		3.  Nose'),nl,nl,
			write('		4.  Tooth'),nl,nl,
			write('   		5.  Gum'),nl,nl,
			write('   		6.  Throat'),nl,nl,
			write('		7.  Chest'),nl,nl,
			write('   		8.  Abdomen'),nl,nl,
			write('		9.  Hand'),nl,nl,
			write('	       10.  Leg'),nl,nl,
			write('	       11.  Cheek'),nl,nl,

			write('Option: '),
			read(P),

				(
					(P =:= 1)->
						(
							%write('1.  Eye'),nl,nl
							premise(Patient_Name,Disease,9,1),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 2)->
						(
							%write('2.   Ear'),nl,nl,
							premise(Patient_Name,Disease,9,2),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 3)->
						(
							%write('3.  Nose'),nl,nl,
							premise(Patient_Name,Disease,9,3),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 4)->
						(
							%write('4.  Tooth'),nl,nl,
							premise(Patient_Name,Disease,9,4),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 5)->
						(
							%write('5.  Gum'),nl,nl,
							premise(Patient_Name,Disease,9,5),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 6)->
						(
							%write('6.  Throat'),nl,nl,
							premise(Patient_Name,Disease,9,6),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);
					(P =:= 7)->
						(
							%write('7.  Chest'),nl,nl,
							premise(Patient_Name,Disease,9,7),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
						);

					(P =:= 8)->
						(
							%Abdomen
							write('		1. Left lower quadrant (LLQ) '),nl,nl,
							write('		2. Left upper quadrant (LUQ) '),nl,nl,
							write('		3. Right upper quadrant (RUQ)'),nl,nl,
							write('		4. Right lower quadrant (RLQ) '),nl,nl,
							write('Select the appropiate portion: '),
							read(S),
							nl,nl,
							portion(Patient_Name,S)
						);
					(P =:= 9)->
						(
							%write('9.  Hand'),nl,nl
							premise(Patient_Name,Disease,9,9),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
							
						);
					(P =:= 10)->
						(
							%write('10.  Leg'),nl,nl
							premise(Patient_Name,Disease,9,10),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl
							
						);
					(P =:= 11)->
						(
							%Cheek
							premise(Patient_Name,Disease,9,11),
							write_list([Patient_Name, ' probably has ',Disease,'.']),nl

						);												
						%else
						(
							write('Invalid input.'),nl,
							write('Try again.'),nl,
							choose(Patient_Name,9)
						)
				).

option(1):-
	write('Sorry disease cannot be recognized.'),
	nl.

option(2):-
	write('There are some link given below: '),nl,nl,
	write('		https://www.icliniq.com/ask-a-doctor-online'),nl,nl,
	write('		http://symptoms.webmd.com/#introView'),nl,nl,
	write('		https://www.virtuwell.com/'),nl,nl,
	write('		https://www.doctorspring.com/'),nl,nl.
	
option(3):-
	write('Choose your area.'),nl,nl,
	write('		1. Kakrail'),nl,nl,
	write('		2. Dhanmondi'),nl,nl,
	write('		3. Malibag'),nl,nl,
	write('		4. Bashundhara'),nl,nl,
	write('		5. Uttara'),nl,nl,
	write('		6. Mirpur'),nl,nl,
	write('Option: '),
	read(T),
	selct(T).	

option(4):-
	write('           '),nl,nl.
	
	
	portion(Patient_Name,1):-
			%write('		1. Left lower quadrant (LLQ) '),nl,nl.
			premise(Patient_Name,Disease,9,8,1),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.
			
	portion(Patient_Name,2):-
			%write('		2. Left upper quadrant (LUQ) '),nl,nl.
			premise(Patient_Name,Disease,9,8,2),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.
	
	portion(Patient_Name,3):-
			premise(Patient_Name,Disease,9,8,3),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.

	portion(Patient_Name,4):-
			%write('		4. Right lower quadrant (RLQ) '),nl,nl.
			premise(Patient_Name,Disease,9,8,4),
			write_list([Patient_Name, ' probably has ',Disease,'.']),nl.
				
selct(1):-
	write('Doctor''s Name:	Dr. A.K. Takib Uddin Ahmed'),nl,nl,
	write('Qualification :	MBBS, MD'),nl,nl,
	write('Designation :	Associated Professor'),nl,nl,
	write('Expertise :		Neuromedicine'),nl,nl,
	write('Organization:	Sir Salimullah Medical College & Mitford Hospital'),nl,nl,
	write('Chamber:	        Islami Bank Central Hospital'),nl,nl,
	write('Location:		30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000'),nl,nl,
	write('Phone:			+880-2-9355801-2, 9360331-2 '),nl,nl,	
	write(''),nl,nl,

	write('Doctor''s Name:	Dr. Fahmid-Ur-Rahman'),nl,nl,
	write('Qualification :	MBBS, MPhil, FCPS'),nl,nl,
	write('Designation :	Assistant Professor'),nl,nl,
	write('Expertise :		Psychiatry'),nl,nl,
	write('Organization:	National Institute of Mental health & Hospital'),nl,nl,
	write('Chamber:			Islami Bank Central Hospital'),nl,nl,
	write('Location:		30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000'),nl,nl,
	write('Phone:	        +880-2-9355801-2, 9360331-2'),nl,nl,
	write(''),nl,nl,	
	
	write('Doctor''s Name:	Dr. Ferdous Ara banu ( Kakoli )'),nl,nl,
	write('Qualification :	MBBS, FCPS ( Gyen. & Obs. )'),nl,nl,
	write('Designation :	Resident Surgeon'),nl,nl,
	write('Expertise :		Gynecology & Obstetrics'),nl,nl,
	write('Chamber:			Islami Bank Central Hospital'),nl,nl,
	write('Location:		30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000'),nl,nl,
	write('Phone:			+880-2-9355801-2, 9360331-2'),nl,nl,
	write(''),nl,nl,	
	
	write('Doctor''s Name:	Dr. Irin Perveen Alam'),nl,nl,
	write('Qualification :	MBBS, FCPS ( Gyen. & Obs. ), M,S'),nl,nl,
	write('Designation :	Assistant Professor'),nl,nl,
	write('Expertise :		Gynecology & Obstetrics'),nl,nl,
	write('Organization:	Islami Bank Central Hospital'),nl,nl,
	write('Chamber:			Islami Bank Central Hospital'),nl,nl,
	write('Location:		30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000'),nl,nl,
	write('Phone:			+880-2-9355801-2, 9360331-2'),nl,nl,
	write(''),nl,nl,	
	
	write('Doctor''s Name:	Dr. Jasim Uddin'),nl,nl,
	write('Qualification :	MBBS, DO, FICO ( UK ) , PhD ( London )'),nl,nl,
	write('Designation :	Consultant'),nl,nl,
	write('Expertise :		Eye ( Ophthalmology )'),nl,nl,
	write('Organization:	Islami Bank Central Hospital'),nl,nl,
	write('Chamber:			Islami Bank Central Hospital'),nl,nl,
	write('Location:		30, Anjuman-e-Mofidul Islam Road, Kakrail, Dhaka - 1000'),nl,nl,
	write('Phone:			+880-2-9355801-2, 9360331-2'),nl,nl,
	write(''),nl,nl.
	
selct(2):-
	write('Doctor''s Name:	Professor Dr. Fazlul Hoque'),nl,nl,
	write('Qualification :	MBBS, FCPS, FRCP ( Edinburgh ),FRCP ( Glasgow ),FACP ( USA ), FCPS ( Pak )'),nl,nl,
	write('Designation :	Professor, Ex - Head, Medicine Department,Dhaka Medical Collage Hospital'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization:	Ex - Principal,Dhaka Medical College & Hospital'),nl,nl,
	write('Chamber:			Northern International Medical College & Hospital'),nl,nl,
	write('Location:		House # 84, Road # 8/A ( New ), Dhanmondi, Dhaka - 1209, Bangladesh'),nl,nl,
	write('Phone:			+880-2-8156914, 8156839, 9133505, 9111381,+880 1674058435, +880 1715153935 ( Chamber )'),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Professor Dr. Sheikh Nesaruddin Ahmed'),nl,nl,
	write('Qualification :	MBBS, DTM&H, MRCP ( Edin ) , FRCP ( Edin ) , FCPS'),nl,nl,
	write('Designation :	Ex-professor and Head, Department of Medicine, DMC'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization: 	Labaid Hospital Ltd'),nl,nl,
	write('Chamber:			Labaid Hospital Ltd'),nl,nl,
	write('Location:		House # 1, Road # 4, Dhanmondi, Dhaka - 1205'),nl,nl,
	write('Phone:			+880-2-8610793 - 8, 9670210 - 3, 8631177'),nl,nl,
	write(''),nl,nl,	
	
	write('Doctor''s Name:	Professor Dr. Syed Atiqul Haq'),nl,nl,
	write('Qualification :	MBBS, FRCP, FCPS, MD'),nl,nl,
	write('Designation :	Professor & Chairman,Department of Medicine'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization: 	Bangabandhu Sheikh Mujib Medical University (BSMMU)'),nl,nl,
	write('Chamber:			Green Life Hospital Ltd. Green Road, Dhaka'),nl,nl,
	write('Location:		32 Bir Uttam K M Shafiullah Sarak (Green Road ), Dhanmondi, Dhaka- 1205'),nl,nl,
	write('Phone:			+880-2-9612345, 8628820-1'),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Professor Dr. H A M Nazmul Ahsan'),nl,nl,
	write('Qualification :	MBBS, FCPS, FRCP (Glasgow) FRCP (Edin), FACP (USA)'),nl,nl,
	write('Designation :	Professor of Medicine'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization: 	Dhaka Medical College & Hospital'),nl,nl,
	write('Chamber:			Popular Diagnostic Centre Ltd'),nl,nl,
	write('Location:		House-11/A, Road-2, Dhanmondi R/A, Dhaka-1205, Bangladesh'),nl,nl,
	write('Phone:			+880-2-9669480, 9661491-3'),nl,nl,
	write(''),nl,nl.

selct(3):-
	write('Doctor''s Name:	Professor Dr. Abul Kashem Khandaker'),nl,nl,
	write('Qualification : 	MBBS, Ph.D, FCPS, FACP, FRCP'),nl,nl,
	write('Designation :	Professor of Medicine'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization: 	Shaheed Suhrawardy Medical College, Dhaka'),nl,nl,
	write('Chamber:	 		Padma Diagnostic Center Ltd'),nl,nl,
	write('Location:  		245/2 New Circular Road, Malibagh, Dhaka - 1217'),nl,nl,
	write('Phone:			+880-2-9350383, 9351237, 9351424, 9352641'),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Professor Dr. Kaniz Moula'),nl,nl,
	write('Qualification :  FCPS, FRCP ( Edin, UK ), FACP ( USA )'),nl,nl,
	write('Designation :	Head, Deaprtment of Medicine'),nl,nl,
	write('Expertise :		Medicine'),nl,nl,
	write('Organization: 	Holy Family Red Crescent Medical College Hospital , Dhaka'),nl,nl,
	write('Chamber:	 		Padma Diagnostic Center Ltd'),nl,nl,
	write('Location: 		245/2, Malibahg, New Circular Road, Dhaka - 1217, Bangladesh'),nl,nl,
	write('Phone:			+880-2-8311721-25 (O), 9350383, 9351237, 9351424 ( Chamber )'),nl,nl,
	write(''),nl,nl.
	
selct(4):-
	write('Doctor''s Name:	Professor Dr. Md. Muzibur Rahman Bhuiyan'),nl,nl,
	write('Qualification :	MBBS, FCPS (Medicine) MD (Gastroenterology)'),nl,nl,
	write('Designation :	Ex-Professor & Head of the Department'),nl,nl,
	write('Expertise :		Medicine, Liver & Gastroentrology'),nl,nl,
	write('Organization:	Apollo Hospitals Dhaka'),nl,nl,
	write('Location: 		Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229'),nl,nl,
	write('Phone: 			+880-2-8401661, 8845242, Cell: +880 1841276556, Hotline: 10678'),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Professor Dr. Anowarul Kabir'),nl,nl,
	write('Qualification :	MBBS, MRCP, FRCP, FCGE (UK)'),nl,nl,
	write('Designation :	Senior Consultant'),nl,nl,
	write('Expertise :	 	Liver & Gastroentrology'),nl,nl,
	write('Organization:	Apollo Hospitals Dhaka'),nl,nl,
	write('Chamber:			Apollo Hospitals Dhaka'),nl,nl,
	write('Location: 		Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229'),nl,nl,
	write('Phone: 			+880-2-8401661, 8845242, Cell: +880 1841276556, Hotline: 10678'),nl,nl,
	write(''),nl,nl,

	write('Doctor''s Name:	Dr. Abdullah Ahmed Solaiman'),nl,nl,
	write('Designation :	Senior Consultant'),nl,nl,
	write('Expertise : 		Cardiology (Heart, Cardiac Surgery, Cardiovascular, Hypertension, Blood Pressure)'),nl,nl,
	write('Organization:	Apollo Hospitals Dhaka'),nl,nl,
	write('Chamber:			Apollo Hospitals Dhaka'),nl,nl,
	write('Location: 		Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229'),nl,nl,
	write('Phone: 			+880-2-8401661, 8845242, Cell: +880 1841276556, Hotline: 10678'),nl,nl,
	write(''),nl,nl.
	
selct(5):-
	write('Doctor''s Name:	Dr. Harun Ur Rashid'),nl,nl,
	write('Qualification :	MS (OPHTH), DO (IPGMR), MBBS (IPGMR), FGO (INDIA)'),nl,nl,
	write('Designation :	LASIK, Phaco & Glaucoma Specialist'),nl,nl,
	write('Expertise :		Eye'),nl,nl,
	write('Organization:	Dhaka Eye Care Hospital,Uttara'),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Professor Dr. Jonaid Shafiq'),nl,nl,
	write('Qualification : 	MBBS, PhD ( Japan )'),nl,nl,
	write('Designation :	Professor'),nl,nl,
	write('Expertise : 		Pain Specialist'),nl,nl,
	write('Organization:	Uttara Adhunik Medical College'),nl,nl,
	write('Chamber:	 		Uttara Adhunik Medical College'),nl,nl,
	write(''),nl,nl.
	
selct(6):-
	write('Doctor''s Name:	Dr. A, B, Siddiq'),nl,nl,
	write('Qualification :	MBBS, MD(Internal Medicine)'),nl,nl,
	write('Designation :	Specialist'),nl,nl,
	write('Expertise :		Internal Medicine'),nl,nl,
	write('Organization:	Dhaka Medical College & Hospital'),nl,nl,
	write('Chamber:			Saic Digital Diagnostic Lab'),nl,nl,
	write('Location: 		14, Sweden Plaza , Main Road, Mirpur- 1, Dhaka'),nl,nl,
	write('Phone: 			+ 880-2-9015122-3 '),nl,nl,
	write(''),nl,nl,
	
	write('Doctor''s Name:	Dr. Mohammad Kamal Hossain'),nl,nl,
	write('Qualification :	MBBS, PGT ( Medicine ), CCD ( Diabebtes ), D-Card ( Cardiology )'),nl,nl,
	write('Designation : 	Consutant'),nl,nl,
	write('Expertise :		Medicine, Diabetes & Cardilogy'),nl,nl,
	write('Organization:	Al-Helal Specialized Hospital'),nl,nl,
	write('Chamber:			Al-Helal Specialized Hospital Ltd'),nl,nl,
	write('Location: 		150, Rokeya Sarani Porbata Mirpur - 10, Dhaka - 1216, Bangladesh'),nl,nl,
	write('Phone: 			+880-2-9008181, 9006820, 8058782, 8053481 '),nl,nl,
	write(''),nl,nl.
	
	
	

%Fever
%influenza
premise(Patient_Name,influenza,1) :-
    symptom(Patient_Name,fever),
    symptom(Patient_Name,headache),
    symptom(Patient_Name,body_ache),
    symptom(Patient_Name,conjunctivitis),
    symptom(Patient_Name,chills),
    symptom(Patient_Name,sore_throat),
    symptom(Patient_Name,runny_nose),
    symptom(Patient_Name,cough).
	
%dengue
premise(Patient_Name,dengue,1) :-
	symptom(Patient_Name,sudden_high_fever),
	symptom(Patient_Name,severe_headaches),
	symptom(Patient_Name,pain_behind_the_eyes),
	symptom(Patient_Name,severe_joint_and_muscle_pain),
	symptom(Patient_Name,fatigue),
	symptom(Patient_Name,nausea),
	symptom(Patient_Name,vomiting),
	symptom(Patient_Name,skin_rash),
	symptom(Patient_Name,mild_bleeding).

%typhoid 
premise(Patient_Name,typhoid,1) :-
	symptom(Patient_Name,poor_appetite),
	symptom(Patient_Name,abdominal_pain),
	symptom(Patient_Name,headaches),
	symptom(Patient_Name,generalized_aches_and_pains),
	symptom(Patient_Name,fever),	
	symptom(Patient_Name,diarrhea_or_constipation).
	
%malaria	
premise(Patient_Name,malaria,1) :-
	symptom(Patient_Name,shaking_chills),
	symptom(Patient_Name,high_fever),
	symptom(Patient_Name,profuse_sweating),
	symptom(Patient_Name,headache),
	symptom(Patient_Name,nausea),	
	symptom(Patient_Name,vomiting).

%Cough
premise(Patient_Name,asthma,2) :-
    symptom(Patient_Name,coughing_at_night),
    symptom(Patient_Name,wheezing),
    symptom(Patient_Name,shortness_breath),
    symptom(Patient_Name,chest_tightness),
    symptom(Patient_Name,chest_pain_pressure).	

%Runny Nose	
%Common_cold
premise(Patient_Name,common_cold,3) :-
    symptom(Patient_Name,headache),
    symptom(Patient_Name,sneezing),
    symptom(Patient_Name,sore_throat),
    symptom(Patient_Name,runny_nose),
    symptom(Patient_Name,chills).

	
%Eye
	%Age_Related_Macular_Degeneration

premise(Patient_Name,age_Related_Macular_Degeneration,4) :-
	symptom(Patient_Name,lose_visual_acuity),
	symptom(Patient_Name,lose_contrast_sensitivity),
	symptom(Patient_Name,destorted_in_the_centre ).

	%Bulging_Eyes

premise(Patient_Name,bulging_Eyes,4) :-
	symptom(Patient_Name,appearance_of_protruding_eyes),
	symptom(Patient_Name,excessive_dryness_in_eyes),
	symptom(Patient_Name,visible_whiteness_top_iris_eyelid),
	symptom(Patient_Name,eye_pain),
	symptom(Patient_Name,eye_redness).

	%Cataracts

premise(Patient_Name,cataracts,4) :-
	symptom(Patient_Name,blurred_or_dim_vision),
	symptom(Patient_Name,vision_difficulty),
	symptom(Patient_Name,sensitivity_to_lighy_and_glare),
	symptom(Patient_Name,seeing_halos_around_lights),
	symptom(Patient_Name,fading_or_yellowing_of_colors),	
	symptom(Patient_Name,double_vision_in_a_single_eye).

	%Cataracts_in_Babies

premise(Patient_Name,cataracts_in_babies,4) :-
	symptom(Patient_Name,poor_vision ),
	symptom(Patient_Name,wobbling_eyes ),
	symptom(Patient_Name,squint),
	symptom(Patient_Name,retinoblastoma).

	%CMV_Retinitis

premise(Patient_Name,cmv_retinitis,4) :-
	symptom(Patient_Name,floaters),
	symptom(Patient_Name,flashes ),
	symptom(Patient_Name,blind_spots),
	symptom(Patient_Name,loss_of_peripheral_vision).
	
	%Color_Blindness	
	
premise(Patient_Name,color_blindness,4) :-
	symptom(Patient_Name,difficulty_distinguishing_between_colors),
	symptom(Patient_Name,inability_to_see_shades ),
	symptom(Patient_Name,rapid_eye_movement).	
	
	%Crossed_Eyes
	
premise(Patient_Name,crossed_eyes,4) :-
	symptom(Patient_Name,eyes_moves_individually),
	symptom(Patient_Name,unsymmetrical_points_of_reflection),
	symptom(Patient_Name,tilting_the_head_to_one_side),
	symptom(Patient_Name,inability_to_gauge_depth),
	symptom(Patient_Name,squinting_with_only_one_eye).
	
	%Diabetic_Macular_Edema
 
premise(Patient_Name,diabetic_macular_edema,4) :-
	symptom(Patient_Name,images_appear_blurry ),
	symptom(Patient_Name,colors_that_seem_washed_out).
		
	%Retinal_detachment
	
premise(Patient_Name,retinal_detachment,4) :-
	symptom(Patient_Name,eye_floaters ),
	symptom(Patient_Name,sudden_of_blurred_vision),
	symptom(Patient_Name,shadows_or_blind_spots).

	
%Ear
premise(Patient_Name,boils,5) :-
	symptom(Patient_Name,swelling),
	symptom(Patient_Name,redness),
	symptom(Patient_Name,pain),
	symptom(Patient_Name,white_yellow_center),
	symptom(Patient_Name,weeping_crusting),
	symptom(Patient_Name,fatigue_or_fever).


premise(Patient_Name,otitis_externa,5) :-
	symptom(Patient_Name,ear_pain),
	symptom(Patient_Name,itching_irritation),
	symptom(Patient_Name,redness_swelling),
	symptom(Patient_Name,pressure_fullness),
	symptom(Patient_Name,peel_off),
	symptom(Patient_Name,pus-like_discharge),
	symptom(Patient_Name,swollen_soreglands),
	symptom(Patient_Name,hearing_loss).


%Headache
premise(Patient_Name,sinusitis,6) :-
	symptom(Patient_Name,pain_pressure),
	symptom(Patient_Name,facial_tenderness_swelling),
	symptom(Patient_Name,stuffy_nose),
	symptom(Patient_Name,nasal_congestion),
	symptom(Patient_Name,earache),
	symptom(Patient_Name,pain_in_jaw).

premise(Patient_Name,caffeine_withdrawal_headache,6) :-
	symptom(Patient_Name,sleepiness),
	symptom(Patient_Name,muscle_aches),
	symptom(Patient_Name,anxiety),
	symptom(Patient_Name,fatigue),
	symptom(Patient_Name,irritability),
	symptom(Patient_Name,depressed_mood),
	symptom(Patient_Name,difficulty_concentrating),
	symptom(Patient_Name,drowsiness),
	symptom(Patient_Name,brain_fog).


%Skin
premise(Patient_Name,chicken_pox,7) :-
    symptom(Patient_Name,fever),
    symptom(Patient_Name,chills),
    symptom(Patient_Name,body_ache),
    symptom(Patient_Name,rash).

premise(Patient_Name,measles,7) :-
    symptom(Patient_Name,fever),
    symptom(Patient_Name,cough),
    symptom(Patient_Name,conjunctivitis),
	symptom(Patient_Name,sneezing),
    symptom(Patient_Name,runny_nose),
    symptom(Patient_Name,rash).

premise(Patient_Name,german_measles,7) :-
    symptom(Patient_Name,fever),
    symptom(Patient_Name,headache),
    symptom(Patient_Name,runny_nose),
    symptom(Patient_Name,rash).

%Tooth
premise(Patient_Name,sinus_or_tension_in_the_facial_muscles,8) :-
	symptom(Patient_Name,fever),
	symptom(Patient_Name,difficulty_breathing_swallowing),
	symptom(Patient_Name,swelling_tooth_area),
	symptom(Patient_Name,pain_bite),
	symptom(Patient_Name,continuous_pain).	

%Pain
%Eye
	%Diabetic_Macular_Edema
 
premise(Patient_Name,diabetic_macular_edema,9,1) :-
	symptom(Patient_Name,images_appear_blurry ),
	symptom(Patient_Name,colors_that_seem_washed_out).
		
	%Retinal_detachment
	
premise(Patient_Name,retinal_detachment,9,1) :-
	symptom(Patient_Name,eye_floaters ),
	symptom(Patient_Name,sudden_of_blurred_vision),
	symptom(Patient_Name,shadows_or_blind_spots).
	
%Ear
premise(Patient_Name,boils,9,2) :-
	symptom(Patient_Name,swelling),
	symptom(Patient_Name,redness),
	symptom(Patient_Name,pain),
	symptom(Patient_Name,white_yellow_center),
	symptom(Patient_Name,weeping_crusting),
	symptom(Patient_Name,fatigue_or_fever).

%Ear_infections
premise(Patient_Name,ear_infections,9,2) :-
	symptom(Patient_Name,mild_pain_discomfort),
	symptom(Patient_Name,feeling_of_pressure),
	symptom(Patient_Name,fussiness),
	symptom(Patient_Name,pus),
	symptom(Patient_Name,hearing_loss).


%Nose
premise(Patient_Name,sinus_infection,9,3) :-
	symptom(Patient_Name,fever),
	symptom(Patient_Name,swelling_eye),	
	symptom(Patient_Name,thick_drainage_nose),	
	symptom(Patient_Name,nausea),
	symptom(Patient_Name,headaches),
	symptom(Patient_Name,earaches).

	
%Tooth
premise(Patient_Name,sinus_or_tension_in_the_facial_muscles,9,4) :-
	symptom(Patient_Name,fever),
	symptom(Patient_Name,difficulty_breathing_swallowing),
	symptom(Patient_Name,swelling_tooth_area),
	symptom(Patient_Name,pain_bite),
	symptom(Patient_Name,continuous_pain).	
	
	
%Gum
	%gingivites

premise(Patient_Name,gingivites,9,5) :-
	symptom(Patient_Name,bleeding_painful_gums),
	symptom(Patient_Name,painful_ulcers),
	symptom(Patient_Name,loose_teeth),
	symptom(Patient_Name,bad_breath),
	symptom(Patient_Name,painful_chewing).
	
%Throat
	%throat_infection

premise(Patient_Name,throat_infection,9,6) :-
	symptom(Patient_Name,scratchy_sensation),
	symptom(Patient_Name,pain_that_worsens_with_swallowing),
	symptom(Patient_Name,swollen_red_tonsils),
	symptom(Patient_Name,white_patches_or_pus_on_your_tonsils),
	symptom(Patient_Name,hoarse_or_muffled_voice).
	
%Chest_cardiac_issue
%myocardial_infarction

premise(Patient_Name,myocardial_infarction,9,7) :-
	symptom(Patient_Name,lightheaded),
	symptom(Patient_Name,dizzy),
	symptom(Patient_Name,sweaty),
	symptom(Patient_Name,nauseated),
	symptom(Patient_Name,short_of_breath),
	symptom(Patient_Name,numb).
	
%Chest_non-cardiac_issue

premise(Patient_Name,chest_non-cardiac_issue,9,7) :-
	symptom(Patient_Name,stress),
	symptom(Patient_Name,anxiety),
	symptom(Patient_Name,burning_sensation),
	symptom(Patient_Name,bitter_taste).
			
	%Salmonella Food Poisoning
	
premise(Patient_Name,salmonella_food_poisoning,9,8,2) :-
	symptom(Patient_Name,abdominal_pain_cramping),
	symptom(Patient_Name,chills),
	symptom(Patient_Name,diarrhea),
	symptom(Patient_Name,fever),
	symptom(Patient_Name,muscle_pain),
	symptom(Patient_Name,nausea),
	symptom(Patient_Name,vomiting),
	symptom(Patient_Name,dehydration),
	symptom(Patient_Name,bloody_stool).

%Right upper quadrant (RUQ)
		%Liver
premise(Patient_Name,cirrhosis,9,8,3) :-
	symptom(Patient_Name,fatigue),
	symptom(Patient_Name,bleeding_easily),
	symptom(Patient_Name,bruising_easily),
	symptom(Patient_Name,itchy_skin),
	symptom(Patient_Name,yellow_discoloration_skin_eyes ),
	symptom(Patient_Name,fluid_accumulation_in_abdomen),
	symptom(Patient_Name,loss_of_appetite),
	symptom(Patient_Name,nausea),
	symptom(Patient_Name,swelling_in_legs),
	symptom(Patient_Name,weight_loss),
	symptom(Patient_Name,drowsiness),
	symptom(Patient_Name,spiderlike_blood_vessels_on_skin),
	symptom(Patient_Name,redness_palms_hands).

premise(Patient_Name,viral_hepatitis,9,8,3) :-
	symptom(Patient_Name,jaundice),
	symptom(Patient_Name,fatigue),
	symptom(Patient_Name,abdominal_pain),
	symptom(Patient_Name,loss_of_appetite),
	symptom(Patient_Name,nausea),
	symptom(Patient_Name,vomiting),
	symptom(Patient_Name,diarrhea),
	symptom(Patient_Name,low_grade_fever),
	symptom(Patient_Name,headache).

%Hand
%arthritis
premise(Patient_Name,arthritis,9,9) :-
	symptom(Patient_Name,joint_swelling),
	symptom(Patient_Name,joint_tenderness),
	symptom(Patient_Name,finger_pain),
	symptom(Patient_Name,finger_swelling),
	symptom(Patient_Name,joint_pain),
	symptom(Patient_Name,joint_streaks ).
%Leg
premise(Patient_Name,sciatica,9,10) :-
    symptom(Patient_Name,lower_back_pain),
    symptom(Patient_Name,pain_rear_leg),
    symptom(Patient_Name,hip_pain),
    symptom(Patient_Name,burning_tingling),
	symptom(Patient_Name,difficulty_moving),
	symptom(Patient_Name,pain_one_side),
    symptom(Patient_Name,difficult_standup).

%inflammation_of_tissue

premise(Patient_Name,inflammation_of_tissue,9,10) :-
	symptom(Patient_Name,cramps),
	symptom(Patient_Name,numbness),
	symptom(Patient_Name,tingling),
	symptom(Patient_Name,fatigue),
	symptom(Patient_Name,weakness).
	
%diabetic_neoropathy
premise(Patient_Name,diabetic_neoropathy,9,10) :-
	symptom(Patient_Name,joint_pain),
	symptom(Patient_Name,numbness),
	symptom(Patient_Name,tingling),
	symptom(Patient_Name,weakness).

	
%Cheek
premise(Patient_Name,mumps,9,11) :-
    symptom(Patient_Name,fever),
	symptom(Patient_Name,headache ),
	symptom(Patient_Name,tiredness),
	symptom(Patient_Name,weakness_and_fatigue),
	symptom(Patient_Name,painful_salivary_glands),
	symptom(Patient_Name,muscle_aches),
	symptom(Patient_Name,loss_of_appetite),
	symptom(Patient_Name,pain_while_chewing_or_swallowing),
    symptom(Patient_Name,swollen_glands).


	
	

%Fever
	%influenza

symptom(Patient_Name,fever) :-
    write_list(['Does ',Patient_Name,' have a fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,headache) :-
    write_list(['Does ',Patient_Name,' have a headache (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,body_ache) :-
    write_list(['Does ',Patient_Name,' have a body_ache (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,conjunctivitis) :-
    write_list(['Does ',Patient_Name,' have a conjunctivitis (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,chills) :-
    write_list(['Does ',Patient_Name,' have a chills (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,sore_throat) :-
    write_list(['Does ',Patient_Name,' have a sore throat (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,runny_nose) :-
    write_list(['Does ',Patient_Name,' have a runny nose (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,cough) :-
    write_list(['Does ',Patient_Name,' have a cough (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%dengue

symptom(Patient_Name,sudden_high_fever):-
	write_list(['Does ',Patient_Name,' have a sudden, high fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,severe_headaches):-
	write_list(['Does ',Patient_Name,' have a severe headaches (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,pain_behind_the_eyes):-
	write_list(['Does ',Patient_Name,' have a pain behind the eyes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,severe_joint_and_muscle_pain):-
	write_list(['Does ',Patient_Name,' have a severe joint and muscle pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,fatigue):-
	write_list(['Does ',Patient_Name,' have a fatigue (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,nausea):-
	write_list(['Does ',Patient_Name,' have a nausea (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,vomiting):-
	write_list(['Does ',Patient_Name,' have a vomiting (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,skin_rash):-
	write_list(['Does ',Patient_Name,' have a skin rash, which appears two to five days after the onset of fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,mild_bleeding):-
	write_list(['Does ',Patient_Name,' have a  mild bleeding (such a nose bleed, bleeding gums, or easy bruising) (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
	%typhoid fever
	
symptom(Patient_Name,poor_appetite):-
	write_list(['Does ',Patient_Name,' have poor appetite (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,abdominal_pain):-
	write_list(['Does ',Patient_Name,' have abdominal pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,generalized_aches_and_pains):-
	write_list(['Does ',Patient_Name,' have generalized aches and pains (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,diarrhea_or_constipation):-
	write_list(['Does ',Patient_Name,' have diarrhea or constipation (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.		

	%malaria
	
symptom(Patient_Name,shaking_chills):-
	write_list(['Does ',Patient_Name,' have shaking chills that can range from moderate to severe (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,high_fever):-
	write_list(['Does ',Patient_Name,' have high fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,profuse_sweating):-
	write_list(['Does ',Patient_Name,' have profuse sweating (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%Cough
symptom(Patient_Name,coughing_at_night):-
	write_list(['Does ',Patient_Name,' have coughing, especially at night (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,wheezing):-
	write_list(['Does ',Patient_Name,' have wheezing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,shortness_breath):-
	write_list(['Does ',Patient_Name,' have shortness of breath (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,chest_tightness):-
	write_list(['Does ',Patient_Name,' have chest tightnes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,chest_pain_pressure):-
	write_list(['Does ',Patient_Name,' have chest pain or pressure (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%Common_cold

symptom(Patient_Name,sneezing) :-
    write_list(['Does ',Patient_Name,' have a sneezing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.


%Eye
	%Age_Related_Macular_Degeneration

symptom(Patient_Name,lose_visual_acuity):-
	write_list(['Does ',Patient_Name,' have a difficulty of reading or driving (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,lose_contrast_sensitivity):-
	write_list(['Does ',Patient_Name,' have the ability to distinguish between objects such as faces against a background (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,destorted_in_the_centre):-
	write_list(['Does ',Patient_Name,' have any difficulties to see images, writing or faces which can become distorted in the centre  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Bulging Eyes

symptom(Patient_Name,appearance_of_protruding_eyes):-
	write_list(['Does ',Patient_Name,' have a appearance of protruding eyes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,excessive_dryness_in_eyes):-
	write_list(['Does ',Patient_Name,' have excessive dryness in eyes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,visible_whiteness_top_iris_eyelid):-
	write_list(['Does ',Patient_Name,' have any difficulties of Visible whiteness between the top of the iris and the eyelid (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,eye_pain):-
	write_list(['Does ',Patient_Name,' have an eye pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,eye_redness):-
	write_list(['Does ',Patient_Name,' have any eye redness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
	%Cataracts

symptom(Patient_Name,blurred_or_dim_vision):-
	write_list(['Does ',Patient_Name,' have a blurred or dim vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,vision_difficulty):-
	write_list(['Does ',Patient_Name,' have grown increasing difficulty with vision at night (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,sensitivity_to_lighy_and_glare):-
	write_list(['Does ',Patient_Name,' have any sensitivity to light and glare (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,seeing_halos_around_lights):-
	write_list(['Does ',Patient_Name,' have been seeing "halos" around lights (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,fading_or_yellowing_of_colors):-
	write_list(['Does ',Patient_Name,' have fading or yellowing of colors (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,double_vision_in_a_single_eye):-
	write_list(['Does ',Patient_Name,' have double vision in a single eye (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Cataracts in Babies
	
symptom(Patient_Name,poor_vision):-
	write_list(['Does ',Patient_Name,' has your child a poor vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,wobbling_eyes):-
	write_list(['Does ',Patient_Name,' has your child rapid uncontrolled eye movements  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,squint):-
	write_list(['Does ',Patient_Name,' has your child the eyes pointing in different directions  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,retinoblastoma):-
	write_list(['Does ',Patient_Name,' has your child a white or grey pupil (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%CMV_Retinitis
	
symptom(Patient_Name,floaters):-
	write_list(['Does ',Patient_Name,' have floaters in the eye(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,flashes):-
	write_list(['Does ',Patient_Name,' have flashes in the eye (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,blind_spots):-
	write_list(['Does ',Patient_Name,' have blind spots or blurred vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,loss_of_peripheral_vision):-
	write_list(['Does ',Patient_Name,' have loss of peripheral vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	

	%Color_Blindness

symptom(Patient_Name,difficulty_distinguishing_between_colors):-
	write_list(['Does ',Patient_Name,' have difficulty distinguishing between colors(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,inability_to_see_shades):-
	write_list(['Does ',Patient_Name,' have inability to see shades or tones of the same color. (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,rapid_eye_movement):-
	write_list(['Does ',Patient_Name,' have rapid eye movement (in rare cases) (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Crossed_Eyes	
	
symptom(Patient_Name,eyes_moves_individually):-
	write_list(['Does ',Patient_Name,' have eyes that do not move together (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,unsymmetrical_points_of_reflection):-
	write_list(['Does ',Patient_Name,' have unsymmetrical points of reflection in each eye (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,tilting_the_head_to_one_side):-
	write_list(['Does ',Patient_Name,' have tilting the head to one side (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,inability_to_gauge_depth):-
	write_list(['Does ',Patient_Name,' have inability to gauge depth (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,squinting_with_only_one_eye):-
	write_list(['Does ',Patient_Name,' have squinting with only one eye(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Diabetic_Macular_Edema

symptom(Patient_Name,images_appear_blurry):-
	write_list(['Does ',Patient_Name,' have images directly in front of you appear blurry or wavy(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,colors_that_seem_washed_out):-
	write_list(['Does ',Patient_Name,' have seen colors that seem washed out (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Retinal_detachment
	
symptom(Patient_Name,eye_floaters):-
	write_list(['Does ',Patient_Name,' have eye floaters accompanied by eye flashes(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,sudden_of_blurred_vision):-
	write_list(['Does ',Patient_Name,' have sudden onset of blurred vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,shadows_or_blind_spots):-
	write_list(['Does ',Patient_Name,' have shadows or blind spots in the field of vision (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

%Ear
	%Boils

symptom(Patient_Name,swelling):-
	write_list(['Does ',Patient_Name,' have a swelling (y/n) ?']),nl,write('Opinion: '),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,redness):-
	write_list(['Does ',Patient_Name,' have a redness (y/n) ?']),nl,write('Opinion: '),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
symptom(Patient_Name,pain):-
	write_list(['Does ',Patient_Name,' have a pain (y/n) ?']),nl,write('Opinion: '),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,white_yellow_center):-
	write_list(['Does ',Patient_Name,' have a white or yellow center or tip (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,weeping_crusting):-
	write_list(['Does ',Patient_Name,' have a weeping, oozing, or crusting (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,fatigue_or_fever):-
	write_list(['Does ',Patient_Name,' have a fatigue or fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%otitis_externa

symptom(Patient_Name,ear_pain):-
	write_list(['Does ',Patient_Name,' have a ear pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,itching_irritation):-
	write_list(['Does ',Patient_Name,' have a itching irritation (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,redness_swelling):-
	write_list(['Does ',Patient_Name,' have a redness swelling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,pressure_fullness):-
	write_list(['Does ',Patient_Name,' have a pressure fullness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,peel_off):-
	write_list(['Does ',Patient_Name,' have a peel off (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,pus_like_discharge):-
	write_list(['Does ',Patient_Name,' have a pus-like discharge (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,swollen_soreglands):-
	write_list(['Does ',Patient_Name,' have a swollen soreglands (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,hearing_loss):-
	write_list(['Does ',Patient_Name,' have a hearing loss (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

%Headache
	%sinusitis

symptom(Patient_Name,pain_pressure):-
	write_list(['Does ',Patient_Name,' have a pain or pressure over the involved area (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,facial_tenderness_swelling):-
	write_list(['Does ',Patient_Name,' have a facial tenderness and swelling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,stuffy_nose):-
	write_list(['Does ',Patient_Name,' have a stuffy nose (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,nasal_congestion):-
	write_list(['Does ',Patient_Name,' have a nasal congestion (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,earache):-
	write_list(['Does ',Patient_Name,' have a earache (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,pain_in_jaw):-
	write_list(['Does ',Patient_Name,' have a pain in the jaw (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%caffeine_withdrawal_headache

symptom(Patient_Name,sleepiness):-
	write_list(['Does ',Patient_Name,' have a sleepiness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,muscle_aches):-
	write_list(['Does ',Patient_Name,' have a flu-like symptoms with muscle aches (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,anxiety):-
	write_list(['Does ',Patient_Name,' have a anxiety (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,irritability):-
	write_list(['Does ',Patient_Name,' have a irritability (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,depressed_mood):-
	write_list(['Does ',Patient_Name,' have a depressed mood (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,difficulty_concentrating):-
	write_list(['Does ',Patient_Name,' have a difficulty_concentrating (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,drowsiness):-
	write_list(['Does ',Patient_Name,' have a drowsiness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,brain_fog):-
	write_list(['Does ',Patient_Name,' have a Brain fog  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

%Skin
	%chicken_pox

symptom(Patient_Name,rash) :-
    write_list(['Does ',Patient_Name,' have a rash (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%measles
	%german_measles

%Tooth
symptom(Patient_Name,difficulty_breathing_swallowing):-
	write_list(['Does ',Patient_Name,' have difficulty breathing or swallowing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,swelling_tooth_area):-
	write_list(['Does ',Patient_Name,' have swelling around the tooth area (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,pain_bite):-
	write_list(['Does ',Patient_Name,' have a pain when he bite (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,continuous_pain):-
	write_list(['Does ',Patient_Name,' have continuous lasting pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

%Pain
	%Eye
	%Ear
symptom(Patient_Name,mild_pain_discomfort):-
	write_list(['Does ',Patient_Name,' have a mild pain or discomfort (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,feeling_of_pressure):-
	write_list(['Does ',Patient_Name,' have a feeling of pressure (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,fussiness):-
	write_list(['Does ',Patient_Name,' have fussiness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,pus):-
	write_list(['Does ',Patient_Name,' have pus (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,hearing_loss):-
	write_list(['Does ',Patient_Name,' have hearing loss (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%Nose
symptom(Patient_Name,swelling_eye):-
	write_list(['Does ',Patient_Name,' have swelling around eye (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,thick_drainage_nose):-
	write_list(['Does ',Patient_Name,' have thick, colored drainage from the nose (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,earaches):-
	write_list(['Does ',Patient_Name,' have earaches (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	

	%Gum
	
%gingivites
	
symptom(Patient_Name,bleeding_painful_gums):-
	write_list(['Does ',Patient_Name,' have bleeding painful gums (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,painful_ulcers):-
	write_list(['Does ',Patient_Name,' have painful ulcers (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,loose_teeth):-
	write_list(['Does ',Patient_Name,' have loose your teeth (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,bad_breath):-
	write_list(['Does ',Patient_Name,' have bad breath (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,painful_chewing):-
	write_list(['Does ',Patient_Name,' have painful chewing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%throat_infection
symptom(Patient_Name,scratchy_sensation):-
	write_list(['Does ',Patient_Name,' have scratchy sensation (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,pain_that_worsens_with_swallowing):-
	write_list(['Does ',Patient_Name,' have pain that worsens with swallowing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,swollen_red_tonsils):-
	write_list(['Does ',Patient_Name,' have swollen red tonsils (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,white_patches_or_pus_on_your_tonsils):-
	write_list(['Does ',Patient_Name,' have white patches or pus on your tonsils (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,hoarse_or_muffled_voice):-
	write_list(['Does ',Patient_Name,' have hoarse or muffled voice (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

	%Chest_cardiac_issue

symptom(Patient_Name,lightheaded):-
	write_list(['Does ',Patient_Name,' have lightheaded (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,dizzy):-
	write_list(['Does ',Patient_Name,' have dizzy (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,sweaty):-
	write_list(['Does ',Patient_Name,' have sweaty (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,nauseated):-
	write_list(['Does ',Patient_Name,' have nauseated (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,short_of_breath):-
	write_list(['Does ',Patient_Name,' have short of breath(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,numb):-
	write_list(['Does ',Patient_Name,' have numb in the left arm or shoulder (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%Chest_non-cardiac_issue	
symptom(Patient_Name,stress):-
	write_list(['Does ',Patient_Name,' have stress (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,anxiety):-
	write_list(['Does ',Patient_Name,' have anxiety (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,burning_sensation):-
	write_list(['Does ',Patient_Name,' have a burning sensation in your throat, chest, or stomach (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,bitter_taste):-
	write_list(['Does ',Patient_Name,' have a bitter taste in your mouth caused by regurgitation of acid (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
		
%Salmonella Food Poisoning		
symptom(Patient_Name,abdominal_pain_cramping):-
	write_list(['Does ',Patient_Name,' have a abdominal pain, cramping, or tenderness(y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,chills):-
	write_list(['Does ',Patient_Name,' have a chills (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,diarrhea):-
	write_list(['Does ',Patient_Name,' have a diarrhea (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,muscle_pain):-
	write_list(['Does ',Patient_Name,' have a  muscle pain  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,nausea):-
	write_list(['Does ',Patient_Name,' have a   nausea (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,vomiting):-
	write_list(['Does ',Patient_Name,' have a  vomiting  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,dehydration):-
	write_list(['Does ',Patient_Name,' have a   signs of dehydration (decreased urine, dry mouth, etc.) (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,bloody_stool):-
	write_list(['Does ',Patient_Name,' have a  bloody stool  (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
%Right upper quadrant (RUQ)
		%Liver
			%cirrhosis

symptom(Patient_Name,bleeding_easily):-
	write_list(['Does ',Patient_Name,' have a bleeding easily (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,bruising_easily):-
	write_list(['Does ',Patient_Name,' have a bruising easily (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,itchy_skin):-
	write_list(['Does ',Patient_Name,' have a itchy skin (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,yellow_discoloration_skin_eyes):-
	write_list(['Does ',Patient_Name,' have a jaundice, which causes a yellowing of the skin and eyes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,fluid_accumulation_in_abdomen):-
	write_list(['Does ',Patient_Name,' have a fluid accumulation in abdomen (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.


symptom(Patient_Name,swelling_in_legs):-
	write_list(['Does ',Patient_Name,' have a swelling in legs (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,weight_loss):-
	write_list(['Does ',Patient_Name,' have a weight loss (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,drowsiness):-
	write_list(['Does ',Patient_Name,' have a drowsiness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,spiderlike_blood_vessels_on_skin):-
	write_list(['Does ',Patient_Name,' have a spiderlike blood vessels on skin (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,redness_palms_hands):-
	write_list(['Does ',Patient_Name,' have a redness palms hands (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

			%viral_hepatitis

symptom(Patient_Name,jaundice):-
	write_list(['Does ',Patient_Name,' have a jaundice, which causes a yellowing of the skin and eyes (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,abdominal_pain):-
	write_list(['Does ',Patient_Name,' have a abdominal pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,vomiting):-
	write_list(['Does ',Patient_Name,' have a vomiting (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
symptom(Patient_Name,diarrhea):-
	write_list(['Does ',Patient_Name,' have a diarrhea (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,low_grade_fever):-
	write_list(['Does ',Patient_Name,' have a low grade fever (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
%Hand	
%arthritis

symptom(Patient_Name,hand_swelling):-
	write_list(['Does ',Patient_Name,' have hand swelling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,hand_tenderness):-
	write_list(['Does ',Patient_Name,' have hand tenderness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,finger_pain):-
	write_list(['Does ',Patient_Name,' have finger pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,finger_swelling):-
	write_list(['Does ',Patient_Name,' have finger swelling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,skin_redness):-
	write_list(['Does ',Patient_Name,' have a skin rednessr (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,red_streaks ):-
	write_list(['Does ',Patient_Name,' have red streaks (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
%LEG
%sciatica
symptom(Patient_Name,lower_back_pain):-
	write_list(['Does ',Patient_Name,' have lower back pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,pain_rear_leg):-
	write_list(['Does ',Patient_Name,' have pain rear leg (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,hip_pain):-
	write_list(['Does ',Patient_Name,' have hip pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,burning_tingling):-
	write_list(['Does ',Patient_Name,' have burning tingling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,difficulty_moving):-
	write_list(['Does ',Patient_Name,' have difficulty moving (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,pain_one_side):-
	write_list(['Does ',Patient_Name,' have one sided pain (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,difficult_standup):-
	write_list(['Does ',Patient_Name,' have difficulty stand up (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	

%inflammation_of_tissue
symptom(Patient_Name,cramps):-
	write_list(['Does ',Patient_Name,' have cramps (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,numbness):-
	write_list(['Does ',Patient_Name,' have numbness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
symptom(Patient_Name,tingling):-
	write_list(['Does ',Patient_Name,' have tingling (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.
	
symptom(Patient_Name,weakness):-
	write_list(['Does ',Patient_Name,' have weakness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	
	
%diabetic_neoropathy


%Cheek
		%mumps

symptom(Patient_Name,tiredness):-
	write_list(['Does ',Patient_Name,' have a tiredness (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,weakness_and_fatigue):-
	write_list(['Does ',Patient_Name,' have a Weakness and fatigue (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,painful_salivary_glands):-
	write_list(['Does ',Patient_Name,' have a Swollen, painful salivary glands on one or both sides of your face (parotitis) (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,muscle_aches):-
	write_list(['Does ',Patient_Name,' have a muscle aches (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,loss_of_appetite):-
	write_list(['Does ',Patient_Name,' have a loss of appetite (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,pain_while_chewing_or_swallowing):-
	write_list(['Does ',Patient_Name,' have a Pain while chewing or swallowing (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.

symptom(Patient_Name,swollen_glands) :-
    write_list(['Does ',Patient_Name,' have a swollen glands (y/n) ?']),nl,write('Opinion: '),
    response(Reply),
    Reply='y'.	

write_list([]).
write_list([Term| Terms]) :-
    write(Term),
    write_list(Terms).

response(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code).


