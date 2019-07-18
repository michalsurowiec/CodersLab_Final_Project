create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)

create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, test1, test1)
INSERT INTO category VALUES (null, test2, test2)
INSERT INTO category VALUES (null, test3, test3)
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, test1, test1)
INSERT INTO category VALUES (null, test2, test2)
INSERT INTO category VALUES (null, test3, test3)
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'test1', 'test1')
INSERT INTO category VALUES (null, 'test2', 'test2')
INSERT INTO category VALUES (null, 'test3', 'test3')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'test1', 'test1')
INSERT INTO category VALUES (null, 'test2', 'test2')
INSERT INTO category VALUES (null, 'test3', 'test3')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'test1', 'test1')
INSERT INTO category VALUES (null, 'test2', 'test2')
INSERT INTO category VALUES (null, 'test3', 'test3')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'Platformy zaprojektowane specjalnie do grania w gry', 'Konsole do gier')
INSERT INTO category VALUES (null, 'Akcesoria przydatne do grania na konsole i PC', 'Akcesoria do gier')
INSERT INTO category VALUES (null, 'Wszelkiej maści laptopy, od multimedialnych przez gamingowe do biznesowych', 'laptopy')
INSERT INTO product VALUES (null, 'Laptop wysokiej klasy do gry', 7027461033661, 'Acer Predator X1000', 3)
INSERT INTO product VALUES (null, 'Podręczny i lekki laptop do nauki i pracy', 2434212233730, 'ASUS 2w1 X100 Light', 3)
INSERT INTO product VALUES (null, 'Topowa konsola od Sony, gotowa do gry w 4K i 60FPS (ta, jasne)', 1056165413475, 'Playstation 4 Pro', 1)
INSERT INTO product VALUES (null, 'Myszka stworzona specjalnie z myślą dla gamerów. Milion DPI i 100 przycisków', 95959658, 'Razor ProMouse XYZ100', 2)
INSERT INTO product VALUES (null, 'Oryginalny pad do Playstation', 85889170, 'Dualschock 4', 2)
INSERT INTO role VALUES (null, 'ROLE_USER')
INSERT INTO role VALUES (null, 'ROLE_ADMIN')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'Platformy zaprojektowane specjalnie do grania w gry', 'Konsole do gier')
INSERT INTO category VALUES (null, 'Akcesoria przydatne do grania na konsole i PC', 'Akcesoria do gier')
INSERT INTO category VALUES (null, 'Wszelkiej maści laptopy, od multimedialnych przez gamingowe do biznesowych', 'laptopy')
INSERT INTO product VALUES (null, 'Laptop wysokiej klasy do gry', 7027461033661, 'Acer Predator X1000', 3)
INSERT INTO product VALUES (null, 'Podręczny i lekki laptop do nauki i pracy', 2434212233730, 'ASUS 2w1 X100 Light', 3)
INSERT INTO product VALUES (null, 'Topowa konsola od Sony, gotowa do gry w 4K i 60FPS (ta, jasne)', 1056165413475, 'Playstation 4 Pro', 1)
INSERT INTO product VALUES (null, 'Myszka stworzona specjalnie z myślą dla gamerów. Milion DPI i 100 przycisków', 95959658, 'Razor ProMouse XYZ100', 2)
INSERT INTO product VALUES (null, 'Oryginalny pad do Playstation', 85889170, 'Dualschock 4', 2)
INSERT INTO role VALUES (null, 'ROLE_USER')
INSERT INTO role VALUES (null, 'ROLE_ADMIN')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'Platformy zaprojektowane specjalnie do grania w gry', 'Konsole do gier')
INSERT INTO category VALUES (null, 'Akcesoria przydatne do grania na konsole i PC', 'Akcesoria do gier')
INSERT INTO category VALUES (null, 'Wszelkiej maści laptopy, od multimedialnych przez gamingowe do biznesowych', 'laptopy')
INSERT INTO product VALUES (null, 'Laptop wysokiej klasy do gry', 7027461033661, 'Acer Predator X1000', 3)
INSERT INTO product VALUES (null, 'Podręczny i lekki laptop do nauki i pracy', 2434212233730, 'ASUS 2w1 X100 Light', 3)
INSERT INTO product VALUES (null, 'Topowa konsola od Sony, gotowa do gry w 4K i 60FPS (ta, jasne)', 1056165413475, 'Playstation 4 Pro', 1)
INSERT INTO product VALUES (null, 'Myszka stworzona specjalnie z myślą dla gamerów. Milion DPI i 100 przycisków', 95959658, 'Razor ProMouse XYZ100', 2)
INSERT INTO product VALUES (null, 'Oryginalny pad do Playstation', 85889170, 'Dualschock 4', 2)
INSERT INTO role VALUES (null, 'ROLE_USER')
INSERT INTO role VALUES (null, 'ROLE_ADMIN')
INSERT INTO user VALUES (null, 'Wrocław', 'użytkownik@google.com', 8, 'Michał', '$2a$10$pDr2q6LyGLrWSjHPiF.GQ.zHCh2H0pArssiGf2.zT/2.bXPSdqI0W', 111222333, '50-156', 'Daszyńskiego', 'Surowiec')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'Platformy zaprojektowane specjalnie do grania w gry', 'Konsole do gier')
INSERT INTO category VALUES (null, 'Akcesoria przydatne do grania na konsole i PC', 'Akcesoria do gier')
INSERT INTO category VALUES (null, 'Wszelkiej maści laptopy, od multimedialnych przez gamingowe do biznesowych', 'laptopy')
INSERT INTO product VALUES (null, 'Laptop wysokiej klasy do gry', 7027461033661, 'Acer Predator X1000', 3)
INSERT INTO product VALUES (null, 'Podręczny i lekki laptop do nauki i pracy', 2434212233730, 'ASUS 2w1 X100 Light', 3)
INSERT INTO product VALUES (null, 'Topowa konsola od Sony, gotowa do gry w 4K i 60FPS (ta, jasne)', 1056165413475, 'Playstation 4 Pro', 1)
INSERT INTO product VALUES (null, 'Myszka stworzona specjalnie z myślą dla gamerów. Milion DPI i 100 przycisków', 95959658, 'Razor ProMouse XYZ100', 2)
INSERT INTO product VALUES (null, 'Oryginalny pad do Playstation', 85889170, 'Dualschock 4', 2)
INSERT INTO role VALUES (null, 'ROLE_USER')
INSERT INTO role VALUES (null, 'ROLE_ADMIN')
INSERT INTO user VALUES (null, 'Wrocław', 'użytkownik@google.com', 8, 'Michał', '$2a$10$pDr2q6LyGLrWSjHPiF.GQ.zHCh2H0pArssiGf2.zT/2.bXPSdqI0W', 111222333, '50-156', 'Daszyńskiego', 'Surowiec')
create table category (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table order_product (product_id bigint not null, order_id bigint not null, primary key (product_id, order_id)) engine=MyISAM
create table orders (id bigint not null auto_increment, created datetime, order_status integer not null, payment_date datetime, quantity integer not null, user_id bigint, primary key (id)) engine=MyISAM
create table product (id bigint not null auto_increment, description varchar(255), ean bigint not null, name varchar(255), category_id bigint, primary key (id)) engine=MyISAM
create table role (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, city varchar(255), email varchar(255), flat_number varchar(255), name varchar(255), password varchar(255), phone_number bigint, postal_code varchar(255), street varchar(255), surname varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=MyISAM
alter table order_product add constraint FK87xbp3hmdt7cml7opyikjqri7 foreign key (order_id) references product (id)
alter table order_product add constraint FK23n0ymcffev02j62eto65vbn1 foreign key (product_id) references orders (id)
alter table orders add constraint FKel9kyl84ego2otj2accfd8mr7 foreign key (user_id) references user (id)
alter table product add constraint FK1mtsbur82frn64de7balymq9s foreign key (category_id) references category (id)
alter table user_roles add constraint FKj9553ass9uctjrmh0gkqsmv0d foreign key (roles_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)
INSERT INTO category VALUES (null, 'Platformy zaprojektowane specjalnie do grania w gry', 'Konsole do gier')
INSERT INTO category VALUES (null, 'Akcesoria przydatne do grania na konsole i PC', 'Akcesoria do gier')
INSERT INTO category VALUES (null, 'Wszelkiej maści laptopy, od multimedialnych przez gamingowe do biznesowych', 'laptopy')
INSERT INTO product VALUES (null, 'Laptop wysokiej klasy do gry', 7027461033661, 'Acer Predator X1000', 3)
INSERT INTO product VALUES (null, 'Podręczny i lekki laptop do nauki i pracy', 2434212233730, 'ASUS 2w1 X100 Light', 3)
INSERT INTO product VALUES (null, 'Topowa konsola od Sony, gotowa do gry w 4K i 60FPS (ta, jasne)', 1056165413475, 'Playstation 4 Pro', 1)
INSERT INTO product VALUES (null, 'Myszka stworzona specjalnie z myślą dla gamerów. Milion DPI i 100 przycisków', 95959658, 'Razor ProMouse XYZ100', 2)
INSERT INTO product VALUES (null, 'Oryginalny pad do Playstation', 85889170, 'Dualschock 4', 2)
INSERT INTO role VALUES (null, 'ROLE_USER')
INSERT INTO role VALUES (null, 'ROLE_ADMIN')
INSERT INTO user VALUES (null, 'Wrocław', 'użytkownik@google.com', 8, 'Michał', '$2a$10$pDr2q6LyGLrWSjHPiF.GQ.zHCh2H0pArssiGf2.zT/2.bXPSdqI0W', 111222333, '50-156', 'Daszyńskiego', 'Surowiec')
# hasło - abCD12\/
INSERT INTO user VALUES (null, 'Wrocław', 'admin@google.com', 21, 'Kamil', '$2a$10$PpmPMbgyInYItcsomQUGlu6tkXGB4Sh/suyo8TZdP7FYwYwgB2K/G', 444555666, '50-651', 'Krasińskiego', 'Kawałek')
# hasło = cdEF34<>
INSERT INTO user_roles VALUES (1, 1)
INSERT INTO user_roles VALUES (1, 2)
INSERT INTO user_roles VALUES (2, 1)
