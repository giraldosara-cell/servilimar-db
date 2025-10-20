INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050001'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Pereira', '660001'),
(8, 'Manizales', '170001'),
(9, 'Santa Marta', '470001'),
(10, 'Cúcuta', '540001'),
(11, 'Neiva', '410001'),
(12, 'Villavicencio', '500001');

INSERT INTO usuario (usuario_id, nombre, apellido, tipo_usuario, condicion_especial, ciudad_id) VALUES
(1, 'Laura', 'Gómez', 'Cliente', 'Ninguna', 1),
(2, 'Carlos', 'Pérez', 'Cliente', 'Discapacidad visual', 2),
(3, 'Ana', 'Torres', 'Cliente', 'Adulto mayor', 3),
(4, 'Diego', 'Martínez', 'Empleado', 'Ninguna', 4),
(5, 'María', 'López', 'Empleado', 'Ninguna', 5),
(6, 'Andrés', 'Rojas', 'Cliente', 'Ninguna', 6),
(7, 'Valentina', 'Suárez', 'Cliente', 'Discapacidad auditiva', 7),
(8, 'Camilo', 'Ramírez', 'Empleado', 'Ninguna', 8),
(9, 'Sara', 'Jiménez', 'Cliente', 'Ninguna', 9),
(10, 'Juan', 'Morales', 'Empleado', 'Ninguna', 10),
(11, 'Paula', 'Castaño', 'Cliente', 'Adulto mayor', 11),
(12, 'Felipe', 'Hernández', 'Empleado', 'Ninguna', 12);

INSERT INTO empleado (empleado_id, usuario_id, cargo, departamento) VALUES
(1, 4, 'Recepcionista', 'Atención al cliente'),
(2, 5, 'Técnico', 'Mantenimiento'),
(3, 8, 'Asesor', 'Ventas'),
(4, 10, 'Administrador', 'Gestión'),
(5, 12, 'Supervisor', 'Operaciones'),
(6, 4, 'Soporte', 'Tecnología'),
(7, 5, 'Analista', 'Calidad'),
(8, 8, 'Auxiliar', 'Logística'),
(9, 10, 'Encargado', 'Inventario'),
(10, 12, 'Técnico', 'Sistemas'),
(11, 5, 'Asistente', 'Gestión'),
(12, 8, 'Coordinador', 'Recursos Humanos');

INSERT INTO servicio (servicio_id, nombre, descripcion, estado) VALUES
(1, 'Limpieza', 'Servicio de limpieza general', 'Activo'),
(2, 'Mantenimiento', 'Reparación y revisión de equipos', 'Activo'),
(3, 'Atención al cliente', 'Atención presencial y telefónica', 'Activo'),
(4, 'Entrega a domicilio', 'Envío de productos a domicilio', 'Activo'),
(5, 'Soporte técnico', 'Asistencia técnica remota', 'Activo'),
(6, 'Gestión de pedidos', 'Administración de órdenes de compra', 'Activo'),
(7, 'Seguridad', 'Monitoreo y control de accesos', 'Activo'),
(8, 'Ventas', 'Asesoramiento y venta de productos', 'Activo'),
(9, 'Facturación', 'Generación de facturas y cobros', 'Activo'),
(10, 'Instalaciones', 'Montaje de equipos y mobiliario', 'Activo'),
(11, 'Consultoría', 'Asesorías personalizadas', 'Activo'),
(12, 'Capacitación', 'Formación de personal', 'Activo');

INSERT INTO turno (turno_id, usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 3, 1, '2025-10-20', '08:00', '10:00', 'Completado'),
(2, 2, 5, 2, '2025-10-20', '09:00', '11:00', 'Completado'),
(3, 3, 8, 3, '2025-10-21', '10:00', '12:00', 'Pendiente'),
(4, 6, 4, 4, '2025-10-21', '11:00', '13:00', 'Pendiente'),
(5, 7, 2, 5, '2025-10-22', '12:00', '14:00', 'Activo'),
(6, 9, 1, 6, '2025-10-22', '13:00', '15:00', 'Activo'),
(7, 11, 7, 7, '2025-10-23', '14:00', '16:00', 'Pendiente'),
(8, 1, 6, 8, '2025-10-23', '15:00', '17:00', 'Pendiente'),
(9, 2, 9, 9, '2025-10-24', '08:00', '10:00', 'Completado'),
(10, 3, 10, 10, '2025-10-24', '09:00', '11:00', 'Activo'),
(11, 6, 11, 11, '2025-10-25', '10:00', '12:00', 'Activo'),
(12, 9, 12, 12, '2025-10-25', '11:00', '13:00', 'Pendiente');

INSERT INTO medioContacto (medio_id, nombre_medio) VALUES
(1, 'Correo electrónico'),
(2, 'SMS'),
(3, 'Llamada telefónica'),
(4, 'WhatsApp'),
(5, 'Telegram'),
(6, 'Notificación móvil'),
(7, 'Carta física'),
(8, 'Portal web'),
(9, 'Red social'),
(10, 'Chatbot'),
(11, 'Fax'),
(12, 'Videollamada');

INSERT INTO notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Su turno ha sido confirmado.', '2025-10-19 08:30:00', 'Enviado'),
(2, 2, 2, 'Recordatorio de su cita mañana.', '2025-10-19 09:00:00', 'Enviado'),
(3, 3, 4, 'Gracias por usar nuestros servicios.', '2025-10-19 09:30:00', 'Enviado'),
(4, 6, 3, 'Actualización de su solicitud.', '2025-10-19 10:00:00', 'Pendiente'),
(5, 7, 5, 'Encuesta de satisfacción.', '2025-10-19 10:30:00', 'Enviado'),
(6, 9, 6, 'Nueva promoción disponible.', '2025-10-19 11:00:00', 'Enviado'),
(7, 11, 8, 'Su turno ha sido reagendado.', '2025-10-19 11:30:00', 'Pendiente'),
(8, 1, 9, 'Actualización de políticas.', '2025-10-19 12:00:00', 'Enviado'),
(9, 2, 10, 'Su servicio ha sido completado.', '2025-10-19 12:30:00', 'Enviado'),
(10, 3, 11, 'Mensaje de confirmación enviado.', '2025-10-19 13:00:00', 'Pendiente'),
(11, 6, 12, 'Atención personalizada disponible.', '2025-10-19 13:30:00', 'Enviado'),
(12, 9, 1, 'Notificación de mantenimiento.', '2025-10-19 14:00:00', 'Enviado');
