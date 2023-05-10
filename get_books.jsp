<html>
	<title>
		MY LIBRARY - GET BOOKS
	</title>
	<head>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>

	<body>
		<h3>List of Books</h3>
		<h4 id="book_name"></h4>
		<h4 id="author"></h4>

	</body>

	<script>
		$(document).ready(function(){
			getBooks();
		})
		function getBooks(){
			$.ajax({
				method:'GET',
				url:'/mylibrary/post_book',
				success: function(response){

					console.log("Response: ", response);
					document.getElementById("book_name").innerHTML = response.book_name;
					document.getElementById("author").innerHTML = response.author;

				},
				error: function(error){
					console.error("An error occurred", error);
				}
			})
		}

	</script>
	
</html>