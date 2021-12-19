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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-12 22:17:32.072709'),(2,'auth','0001_initial','2021-12-12 22:17:33.081702'),(3,'admin','0001_initial','2021-12-12 22:17:33.310704'),(4,'admin','0002_logentry_remove_auto_add','2021-12-12 22:17:33.323707'),(5,'admin','0003_logentry_add_action_flag_choices','2021-12-12 22:17:33.336707'),(6,'contenttypes','0002_remove_content_type_name','2021-12-12 22:17:33.505702'),(7,'auth','0002_alter_permission_name_max_length','2021-12-12 22:17:33.610704'),(8,'auth','0003_alter_user_email_max_length','2021-12-12 22:17:33.659704'),(9,'auth','0004_alter_user_username_opts','2021-12-12 22:17:33.675708'),(10,'auth','0005_alter_user_last_login_null','2021-12-12 22:17:33.916701'),(11,'auth','0006_require_contenttypes_0002','2021-12-12 22:17:33.930701'),(12,'auth','0007_alter_validators_add_error_messages','2021-12-12 22:17:33.948703'),(13,'auth','0008_alter_user_username_max_length','2021-12-12 22:17:34.071733'),(14,'auth','0009_alter_user_last_name_max_length','2021-12-12 22:17:34.181702'),(15,'auth','0010_alter_group_name_max_length','2021-12-12 22:17:34.213701'),(16,'auth','0011_update_proxy_permissions','2021-12-12 22:17:34.225702'),(17,'auth','0012_alter_user_first_name_max_length','2021-12-12 22:17:34.325701'),(18,'sessions','0001_initial','2021-12-12 22:17:34.384703'),(19,'blog_app','0001_initial','2021-12-13 01:00:32.455331'),(20,'blog_app','0002_post','2021-12-13 04:29:42.349145'),(21,'blog_app','0003_post_contenido','2021-12-13 04:57:45.941002'),(22,'blog_app','0004_rename_sluh_post_slug_alter_post_imagen','2021-12-14 21:36:44.246163'),(23,'blog_app','0005_alter_post_titulo','2021-12-15 16:31:32.852179'),(24,'blog_app','0006_alter_autor_email','2021-12-15 16:45:15.314563'),(25,'blog_app','0007_alter_autor_fecha_de_creacion','2021-12-15 16:49:24.799621'),(26,'blog_app','0008_alter_autor_fecha_de_creacion_and_more','2021-12-15 16:50:51.890587'),(27,'blog_app','0009_alter_post_descripcion','2021-12-15 17:28:55.362549'),(28,'blog_app','0010_alter_post_descripcion','2021-12-15 17:31:32.597347'),(29,'blog_app','0011_alter_post_descripcion','2021-12-15 17:36:08.615415'),(30,'blog_app','0012_alter_autor_apellidos','2021-12-15 17:39:04.921551'),(31,'blog_app','0013_alter_post_titulo','2021-12-15 17:40:52.093489'),(32,'blog_app','0014_usuario_comentarios','2021-12-17 21:14:49.480759'),(33,'blog_app','0015_usuarios_alter_comentarios_options_and_more','2021-12-17 21:14:50.070723'),(34,'blog_app','0016_comentarios_usuario','2021-12-17 21:14:50.167573'),(35,'blog_app','0017_alter_comentarios_usuario','2021-12-17 21:14:50.292633'),(36,'blog_app','0018_alter_comentarios_usuario','2021-12-17 21:14:50.309634'),(37,'blog_app','0019_alter_comentarios_usuario','2021-12-17 21:15:55.560901'),(38,'blog_app','0020_alter_comentarios_usuario','2021-12-17 21:22:17.673300'),(39,'blog_app','0021_alter_comentarios_usuario','2021-12-17 21:28:48.486743'),(40,'blog_app','0022_alter_comentarios_usuario','2021-12-17 21:30:11.311280'),(41,'blog_app','0023_alter_comentarios_usuario','2021-12-17 21:31:11.710822'),(42,'blog_app','0024_alter_comentarios_usuario','2021-12-17 21:32:39.111032'),(43,'blog_app','0025_alter_comentarios_usuario','2021-12-17 22:17:12.743043');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-18 23:37:38
