<html>
	<title>MY LIBRARY</title>
	<head>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<form>

			<input placeholder="Book Name" name="book_name" id="book_name">
			<br>
			<input placeholder="Author" name="author" id="author">
			<br>
			<button type="button" onclick="postBook()">Post Book</button>

		</form>
	</body>

	<script>
		function postBook(){
			var bookName = document.getElementById("book_name").value;
			var Author = document.getElementById("author").value;
			var json = {
				book_name:bookName,
				author:Author
			}
			
			$.ajax({
				method:'POST',
				url:'/mylibrary/post_book',
				data:json,
				success:function(response){
					console.log("Data posted successfully", response);

				},
				error:function(error){
					console.error("You have an error", error);
				}
			})

		}
	</script>
</html>