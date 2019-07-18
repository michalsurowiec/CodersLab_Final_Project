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