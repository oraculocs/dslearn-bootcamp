INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) values ('Bootcamp HTML', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 'https://image.shutterstock.com/image-vector/elearning-icon-online-education-symbol-260nw-1923064007.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) values ('Trilha HTML', 'Trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) values ('Forum', 'Tire suas dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) values ('Lives', 'Lives exclusivas para a turma', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 0, 1);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capitulo 1', 'Neste capítulo vamos começar', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 1, null);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capitulo 2', 'Neste capítulo vamos continuar', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 1, 1);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) values ('Capitulo 3', 'Neste capítulo vamos finalizar', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1xW9YuiAfCf-E0HVQcJFREGDDImkzirTpjPzfrVyvbdZzP9KR1GmtiowkoJeso7nJcqo&usqp=CAU', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) values (1, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) values (2, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);
