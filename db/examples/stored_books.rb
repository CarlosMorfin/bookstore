StoredBook.create(
  store:      Store.find(1),
  book:       Book.find(1),
  book_count: 5,
)

StoredBook.create(
  store:      Store.find(1),
  book:       Book.find(2),
  book_count: 5,
)

StoredBook.create(
  store:      Store.find(1),
  book:       Book.find(3),
  book_count: 10,
)

StoredBook.create(
  store:      Store.find(2),
  book:       Book.find(1),
  book_count: 10,
)

StoredBook.create(
  store:      Store.find(2),
  book:       Book.find(2),
  book_count: 5,
)

StoredBook.create(
  store:      Store.find(3),
  book:       Book.find(3),
  book_count: 10,
)
