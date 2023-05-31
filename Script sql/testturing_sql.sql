DROP DATABASE IF EXISTS testturing;

CREATE DATABASE testturing;

USE testturing;

CREATE TABLE pregunta(
	cod_pregunta INT NOT NULL AUTO_INCREMENT,
    pregunta VARCHAR(100) NOT NULL,
    PRIMARY KEY(cod_pregunta)
)ENGINE = INNODB;
CREATE TABLE respuesta(
	cod_respuesta INT NOT NULL AUTO_INCREMENT,
    cod_pregunta INT NOT NULL,
    respuesta VARCHAR(200) NOT NULL,
    PRIMARY KEY(cod_respuesta),
    INDEX (cod_pregunta),
    FOREIGN KEY (cod_pregunta) REFERENCES pregunta(cod_pregunta)
);


-- Insertar preguntas
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los servicios de atencion al paciente');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre la política de seguridad del hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los horarios de visita de los medicos');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los protocolos de limpieza en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los servicios de cuidados paliativos en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los recursos educativos disponibles en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los servicios de traduccion en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('cual es el proceso para hacer una cita medica en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los costos de los servicios medicos en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los requisitos de admision en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los servicios de atencion de emergencia en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre los servicios de traducción en el hospital');
INSERT INTO pregunta (pregunta) VALUES ('como puedo obtener informacion sobre la política de visitas del hospital');
INSERT INTO pregunta (pregunta) VALUES ('hola');
INSERT INTO pregunta (pregunta) VALUES ('que servicios ofrece el hospital');
INSERT INTO pregunta (pregunta) VALUES ('ayuda');





-- Insertar respuestas
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de servicio al paciente del hospital puede proporcionarte información detallada sobre los servicios disponibles para ti', 1);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Estos servicios pueden incluir transporte, alojamiento, comidas y otros servicios de atención al paciente', 1);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Tu médico o enfermera también pueden proporcionarte información sobre los servicios de atención al paciente disponibles en el hospital', 1);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de seguridad del hospital puede proporcionarte información detallada sobre la política de seguridad del hospital', 2);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informarte sobre los procedimientos de emergencia y las medidas de seguridad', 2);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de admisiones también puede proporcionarte información sobre la política de seguridad del hospital', 2);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Tu médico o enfermera pueden proporcionarte información detallada sobre los horarios de visita', 3);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informarte sobre los horarios de visita de los médicos y asegurarte de programar una cita previa si es necesario', 3);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de servicio al paciente también puede ayudarte a programar una cita con tu médico', 3);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de limpieza del hospital puede proporcionarte información detallada sobre los protocolos de limpieza', 4);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informarte sobre las medidas de limpieza y desinfección que se llevan a cabo en el hospital', 4);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de enfermería también puede proporcionarte información sobre los protocolos de limpieza en el hospital', 4);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El horario de atención de urgencias es las 24 horas del día.', 5);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Para citas médicas puede llamar al número telefónico 123456789 o hacerlo a través de nuestra página web.', 5);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Sí, ofrecemos servicios de hospitalización en habitaciones individuales o compartidas.', 6);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Nuestras habitaciones cuentan con televisión, baño privado y aire acondicionado.', 6);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('También ofrecemos servicio de comidas para pacientes hospitalizados.', 6);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Puede acudir a la recepción del hospital para solicitar información detallada sobre los costos de los servicios.', 7);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('También puede consultar en nuestra página web los costos de los servicios médicos.', 7);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Para solicitar una cita médica puede llamar al número telefónico 123456789 o hacerlo a través de nuestra página web.', 8);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('También puede acudir personalmente a la recepción del hospital para solicitar su cita médica.', 8);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Sí, contamos con servicio de ambulancia las 24 horas del día.', 9);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Para solicitar el servicio de ambulancia puede llamar al número telefónico 123456789.', 9);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El servicio de ambulancia tiene un costo adicional al servicio médico que se le proporcione al paciente.', 9);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El tiempo de espera para una consulta médica depende de la especialidad y la disponibilidad de los médicos.', 10);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Para algunas especialidades es posible que haya una lista de espera.', 10);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Sí, ofrecemos servicios de laboratorio y radiología en nuestras instalaciones.', 11);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Los resultados de los estudios realizados en el laboratorio o radiología son entregados en un plazo de 24 a 48 horas.', 11);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('En caso de que se requieran estudios especiales, se le informará al paciente el tiempo que tardará en recibir los resultados.', 11);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de servicio al paciente del hospital puede proporcionarte información detallada sobre los servicios de traducción disponibles', 12);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Estos servicios pueden incluir intérpretes, traducción de documentos y materiales educativos en diferentes idiomas', 12);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informar al personal de servicio al paciente sobre tus necesidades de traducción para recibir asistencia adecuada.', 12);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de admisiones del hospital puede proporcionarte información detallada sobre la política de visitas', 13);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informarte sobre las horas de visita, el número de visitantes permitidos y las restricciones de edad', 13);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('El personal de enfermería también puede proporcionarte información sobre la política de visitas del hospital.', 13);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('¡Hola! ¿En qué puedo ayudarte hoy?', 14);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Debes informen día! ¿Cómo puedo asistirte?', 14);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('¡Saludos! ¿En qué puedo servirte?', 14);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Ofrecemos una amplia gama de servicios médicos, que incluyen atención de emergencias, consultas externas, hospitalización, cirugía y más.', 15);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Entre nuestros servicios se encuentran la atención de emergencias, diagnóstico y tratamiento de enfermedades, exámenes de laboratorio, radiología, terapia física y ocupacional, y más.', 15);
INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Proporcionamos atención médica integral y especializada en diferentes áreas, incluyendo medicina interna, pediatría, ginecología, cirugía general, cardiología, neurología y más.', 15);

INSERT INTO respuesta (respuesta, cod_pregunta) VALUES ('Podrias hacer al siguiente pregunta (dame un listado de posibles preguntas).', 16);

SELECT respuesta FROM respuesta r WHERE r.cod_pregunta = 1 ORDER BY RAND() LIMIT 1;
SELECT * FROM pregunta p WHERE p.pregunta = 'que servicios ofrece el hospital';