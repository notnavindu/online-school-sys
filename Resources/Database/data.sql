INSERT INTO `online_school_ims`.`auth` 
VALUES 
( '1','KapilaF', 'fonseka1971', 'admin'),
( '2','Kamal96', 'kamal@96', 'admin'),
( '3','Laksh_man', 'laksh.', 'admin'),
( '4','Nandasena_H', 'nh270', 'admin'),
( '5','Dharme_R', '12345678', 'admin'),
( '6','NuwanS', '123Nuwan', 'teacher'),
( '7','Pradeep', 'Pra45deep', 'teacher'),
( '8','Kusal00', 'kusala100', 'teacher'),
( '9','Mendis', 'menda001', 'teacher'),
( '10','BinduSara', 'pinibindu', 'teacher'),
( '11','LayanJay', 'layan@123', 'student' ),
( '12','Sankhe', 'happa', 'student'),
( '13','Navanavi', 'naiya69', 'student'),
( '14','MenakaDas', 'menake987', 'student'),
( '15','IsuruP', 'issaaa99', 'student');

INSERT INTO `online_school_ims`.`student` 
	VALUES 
	('1', 'Layan', '17', 'Colombo', '0762696988', '12', 'C', 'image_link', '11'),
	('2', 'Sankhaja', '17', 'Kandy', '0762696988', '12', 'A', 'image_link', '12'),
	('3', 'Navindu', '17', 'Hanthana', '0766942069', '12', 'F', 'image_link', '13'),
	('4', 'Menaka', '17', 'Urapola', '0762696540', '12', 'E', 'image_link', '14'),
	('5', 'Isuru', '16', 'Bandarawela', '0715508505', '11', 'B', 'image_link', '15');
    
    INSERT INTO `online_school_ims`.`subject` 
	VALUES 
	('1', 'ICT'),
	('2', 'English'),
	('3', 'Sinhala'),
	('4', 'History'),
	('5', 'Mathematics');

INSERT INTO `online_school_ims`.`teacher` 
VALUES 
('1', 'Nuwan', '75', 'Malabe', '0758956422', '1', 'image_link', '6'),
('2', 'Pradeep', '65', 'Kandy', '0757946422', '2', 'image_link', '7'),
('3', 'Kusal', '50', 'Jaffna', '0758982422', '3', 'image_link', '8'),
('4', 'Mendis', '46', 'Mannar', '0798964922', '4', 'image_link', '9'),
('5', 'Bindusara', '56', 'India', '0757986422', '5', 'image_link', '10');

INSERT INTO `online_school_ims`.`studentsubject` 
VALUES 
('1', '1'),
('1', '2'),
('1', '5'),
('1', '3'),
('2', '4'),
('2', '5'),
('2', '2'),
('2', '1'),
('5', '1'),
('5', '4'),
('5', '5');

INSERT INTO `online_school_ims`.`marks` 
VALUES 
('1', '1', '2021Term2', '12', '60'),
('1', '2', '2021Term2', '12', '50'),
('1', '3', '2021Term2', '12', '75'),
('2', '2', '2021Term2', '12', '80'),
('5', '5', '2021Term2', '11', '0'),
('5', '4', '2021Term2', '11', '99'),
('5', '1', '2021Term2', '11', '51');

INSERT INTO `online_school_ims`.`timetables` 
VALUES 
('1', '2021', '12', 'E', 'timetable_image'),
('2', '2021', '12', 'C', 'timetable_image'),
('3', '2021', '12', 'F', 'timetable_image'),
('4', '2021', '12', 'A', 'timetable_image'),
('5', '2021', '11', 'B', 'timetable_image');

INSERT INTO `online_school_ims`.`notices` 
VALUES 
('1', '1999-10-10', 'Commencement of Academic Activities', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis neque vel rhoncus varius. Mauris tristique dapibus lectus quis scelerisque.', '1', '0'),
('2', '2005-06-11', 'Public Holiday', ' In elementum metus dictum lacus rutrum viverra. Nulla facilisi. Pellentesque tempor finibus arcu sit amet bibendum. Maecenas sagittis elit eget tincidunt condimentum. Vivamus pharetra sagittis risus sit amet faucibus. Mauris tortor nisi, sodales vel just', '1', '1'),
('3', '2018-02-05', 'New Teacher Guidelines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis neque vel rhoncus varius. Mauris tristique dapibus lectus quis scelerisque.', '0', '1'),
('4', '2021-03-07', 'No Lectures', 'In elementum metus dictum lacus rutrum viverra. Nulla facilisi. Pellentesque tempor finibus arcu sit amet bibendum. Maecenas sagittis elit eget tincidunt condimentum. Vivamus pharetra sagittis risus sit amet faucibus. Mauris tortor nisi, sodales vel just', '1', '1'),
('5', '2021-04-08', 'No Examinations', 'Donec et condimentum odio. Quisque in turpis ac mauris porta sodales vitae id arcu. Vivamus dictum eget mauris sed luctus. Quisque vel congue nisl. Curabitur rutrum libero eu dictum efficitur.', '1', '0');

INSERT INTO `online_school_ims`.`inquiry` 
VALUES 
('1', '3', 'kalunavi@gmail.com', 'Curabitur volutpat tincidunt massa sit amet lobortis. Pellentesque blandit justo elit, malesuada fermentum mi volutpat sed. Cras porta mi a sem euismod, vel convallis odio dictum. Pellentesque quis tempus leo, sagittis consectetur nibh. Fusce ut arcu at orci dictum ullamcorper ut sit amet velit.', '1'),
('2', '2', 'shapupuuttu@gmail.com', 'Cras quis turpis pulvinar, porta metus at, ultrices magna. Donec in sollicitudin metus. Ut nec augue sit amet lacus porta pellentesque lobortis ut velit. Nullam faucibus, elit et vulputate aliquam, elit erat pulvinar metus, ut feugiat tellus dui nec neque. Integer ac congue eros.', '0'),
('3', '1', 'digaleo@gmail.com', 'Donec turpis nisl, facilisis id convallis quis, malesuada a lectus. Proin interdum, ante molestie congue viverra, mauris sem gravida libero, sodales accumsan felis lacus sit amet enim. Nullam vel urna ultricies, maximus risus sed, cursus urna. Suspendisse lacinia nec ipsum eu euismod. Morbi sed semper metus. Pellentesque fermentum, justo ut tristique rutrum, lectus quam facilisis neque, in varius dolor purus vel massa. ', '0'),
('4', '5', 'isurumaxx@gmail.com', 'Nulla vestibulum in nisl vel laoreet. Donec non leo sed tortor ultrices mattis vitae sed arcu. Vestibulum gravida lectus nec hendrerit gravida. Sed accumsan, massa ut aliquet faucibus, eros mi vulputate odio, ut sodales nulla purus ut metus. Sed sit amet vestibulum turpis. Vivamus in volutpat felis. Donec sed mi a arcu ultrices suscipit ac id tortor.', '0'),
('5', '4', 'papadassa@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis ut odio in ultrices. Suspendisse at magna lobortis velit hendrerit dapibus consequat ac est. Etiam posuere ipsum at pulvinar tempor. Morbi feugiat, lacus sit amet blandit facilisis, dolor lorem varius diam, vitae cursus ex justo sit amet neque. Mauris eget venenatis tellus, vehicula luctus leo. Aliquam erat volutpat. Morbi non velit vestibulum, sagittis mauris in, scelerisque eros. Vivamus eget ligula a felis dictum blandit ac vel mi.', '1');

INSERT INTO `online_school_ims`.`admin` 
VALUES 
('1', 'Kapila', '45', 'Colombo', '0756894563', 'image_link', '1'),
('2', 'Kamal', '21', 'Galle', '0757844563', 'image_link', '2'),
('3', 'Lakshman', '45', 'Malabe', '0779894563', 'image_link', '3'),
('4', 'Nandasena', '69', 'Hambantota', '0715494563', 'image_link', '4'),
('5', 'Dharmasena', '35', 'Colombo', '0713344563', 'image_link', '5');

