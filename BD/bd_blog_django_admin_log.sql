-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_blog
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-13 22:09:44.856361','1','Noticias',1,'[{\"added\": {}}]',8,1),(2,'2021-12-13 22:10:13.522486','1','Olivera Jeronimo',1,'[{\"added\": {}}]',7,1),(3,'2021-12-13 22:16:31.192233','1','Post prueba 1',1,'[{\"added\": {}}]',9,1),(4,'2021-12-13 22:17:01.562370','2','Post prueba 2',1,'[{\"added\": {}}]',9,1),(5,'2021-12-13 22:17:26.367132','3','Post prueba 3',1,'[{\"added\": {}}]',9,1),(6,'2021-12-14 02:18:55.364890','1','Post prueba 1',2,'[{\"changed\": {\"fields\": [\"Contenido\"]}}]',9,1),(7,'2021-12-14 21:30:41.546374','1','Post prueba 1',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(8,'2021-12-15 16:29:02.023549','2','Campaña',1,'[{\"added\": {}}]',8,1),(9,'2021-12-15 16:29:13.526566','3','Objetivos',1,'[{\"added\": {}}]',8,1),(10,'2021-12-15 16:29:13.701108','4','Objetivos',1,'[{\"added\": {}}]',8,1),(11,'2021-12-15 16:29:20.169845','3','Objetivos',3,'',8,1),(12,'2021-12-15 16:45:23.597643','2','Benavente Lucía',1,'[{\"added\": {}}]',7,1),(13,'2021-12-15 16:45:28.077549','2','Benavente Lucía',2,'[]',7,1),(14,'2021-12-15 16:48:04.821576','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Titulo\", \"Slug\", \"Descripcion\", \"Contenido\", \"Imagen\", \"Autor\"]}}]',9,1),(15,'2021-12-15 16:51:30.850516','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Fecha de creacion\"]}}]',9,1),(16,'2021-12-15 17:02:35.568945','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Contenido\"]}}]',9,1),(17,'2021-12-15 17:05:33.126567','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Contenido\"]}}]',9,1),(18,'2021-12-15 17:29:37.885533','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',9,1),(19,'2021-12-15 17:32:12.663547','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',9,1),(20,'2021-12-15 17:32:12.697548','1','La panela, una dulce apuesta para que los indígenas sigan viviendo en la Sierra de Colombia',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',9,1),(21,'2021-12-15 17:35:03.679543','1','Anonimo Anonimo',2,'[{\"changed\": {\"fields\": [\"Nombre del autor\", \"Apellido del autor\", \"Correo Electronico\"]}}]',7,1),(22,'2021-12-15 17:37:20.361408','2','¿Estás seguro de querer compartir eso? Cómo distinguir entre realidad y ficción en internet',2,'[{\"changed\": {\"fields\": [\"Titulo\", \"Slug\", \"Descripcion\", \"Contenido\", \"Fecha de creacion\"]}}]',9,1),(23,'2021-12-15 17:39:27.995448','1','None Anonimo',2,'[{\"changed\": {\"fields\": [\"Apellido del autor\"]}}]',7,1),(24,'2021-12-15 17:39:51.822494','3','None Centro de Información de las Naciones Unidas en México',1,'[{\"added\": {}}]',7,1),(25,'2021-12-15 17:42:27.605502','4','De Oaxaca a Harvard: la historia de Ramiro, un joven indígena promotor de los Objetivos de Desarrollo Sostenible',1,'[{\"added\": {}}]',9,1),(26,'2021-12-15 17:43:37.823577','3','COVID-19/Ómicron: la OMS pide que no cunda el pánico',2,'[{\"changed\": {\"fields\": [\"Titulo\", \"Slug\", \"Descripcion\", \"Contenido\", \"Imagen\", \"Fecha de creacion\"]}}]',9,1),(27,'2021-12-15 17:45:32.518531','2','¿Estás seguro de querer compartir eso? Cómo distinguir entre realidad y ficción en internet',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',9,1),(28,'2021-12-15 17:45:32.589572','2','¿Estás seguro de querer compartir eso? Cómo distinguir entre realidad y ficción en internet',2,'[]',9,1),(29,'2021-12-15 21:37:04.890606','5','Fin de la pobreza',1,'[{\"added\": {}}]',9,1),(30,'2021-12-15 21:39:18.790741','6','Hambre Cero',1,'[{\"added\": {}}]',9,1),(31,'2021-12-15 21:43:07.419581','7','Salud y Bienestar',1,'[{\"added\": {}}]',9,1),(32,'2021-12-15 21:45:53.054650','8','Educación de Calidad',1,'[{\"added\": {}}]',9,1),(33,'2021-12-15 21:47:41.489581','9','Igualdad de Genero',1,'[{\"added\": {}}]',9,1),(34,'2021-12-15 21:50:09.339737','10','Agua Limpia y Saneamiento',1,'[{\"added\": {}}]',9,1),(35,'2021-12-15 21:54:50.705505','11','Energía Asequible y no Contaminante',1,'[{\"added\": {}}]',9,1),(36,'2021-12-15 21:56:11.264749','12','Trabajo Decente y Crecimiento Económico',1,'[{\"added\": {}}]',9,1),(37,'2021-12-15 21:58:56.145381','13','Indutria, Innovación e Infraestructuras',1,'[{\"added\": {}}]',9,1),(38,'2021-12-15 22:00:40.154747','14','Reducción de las Desigualdades',1,'[{\"added\": {}}]',9,1),(39,'2021-12-15 22:02:06.625738','15','Ciudades y Comunidades Sostenibles',1,'[{\"added\": {}}]',9,1),(40,'2021-12-15 22:03:34.781253','16','Producción y Consumo Responsables',1,'[{\"added\": {}}]',9,1),(41,'2021-12-15 22:04:50.805705','17','Acción por el Clima',1,'[{\"added\": {}}]',9,1),(42,'2021-12-15 22:06:02.311468','18','Vida Submarina',1,'[{\"added\": {}}]',9,1),(43,'2021-12-15 22:07:38.719737','19','Vida de Ecosistemas Terrestres',1,'[{\"added\": {}}]',9,1),(44,'2021-12-15 22:08:54.288549','20','Paz y Justicia',1,'[{\"added\": {}}]',9,1),(45,'2021-12-15 22:10:22.504495','21','Alianzas para Lograr los Objetivos',1,'[{\"added\": {}}]',9,1),(46,'2021-12-17 19:05:29.391050','2','usuario01',1,'[{\"added\": {}}]',4,1),(47,'2021-12-17 19:06:47.444069','2','usuario01',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"User permissions\"]}}]',4,1),(48,'2021-12-17 19:17:30.183619','3','usuario02',1,'[{\"added\": {}}]',4,1),(49,'2021-12-17 19:18:07.097061','3','usuario02',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"User permissions\"]}}]',4,1),(50,'2021-12-17 21:20:36.211649','9','comentario de prueba 1',1,'[{\"added\": {}}]',11,1),(51,'2021-12-17 21:22:34.445791','10','comentario de prueba 2',1,'[{\"added\": {}}]',11,2),(52,'2021-12-17 21:31:20.048980','11','comentario de prueba 3',1,'[{\"added\": {}}]',11,2),(53,'2021-12-17 21:31:35.376698','12','Comentario de prueba 4',1,'[{\"added\": {}}]',11,2),(54,'2021-12-17 22:15:37.170515','13','sdadasdasd',1,'[{\"added\": {}}]',11,1),(55,'2021-12-19 00:24:04.857753','13','sdadasdasd',2,'[{\"changed\": {\"fields\": [\"Usuario\"]}}]',11,1),(56,'2021-12-19 00:24:09.028956','10','comentario de prueba 2',2,'[{\"changed\": {\"fields\": [\"Usuario\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-18 23:37:02
