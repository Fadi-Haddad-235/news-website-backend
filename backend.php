<?php
include ("connection.php");
$tag = $_POST['tag'];
// echo "hello";
// echo $tag;
// $tag = 1;

$query = $mysqli->prepare("SELECT * FROM news_articles na JOIN article_categories ac ON na.tag = ac.tag_id WHERE ac.tag_name = ?");
$query->bind_param("s",$tag);
$query->execute();
$result = $query->get_result();

$articles =[];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $article = array(
            'id' => $row['article_id'],
            'title' => $row['title'],
            'author' => $row['author'],
            'date_published' => $row['date_published'],
            'content' => $row['content'],
            'image_url' => $row['image_url'],
            'tag' => $row['tag']
        );
        $articles[] = $article;
    }
}

echo json_encode($articles);


?>
