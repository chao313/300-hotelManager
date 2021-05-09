package com.hotel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.dao.BookDao;
import com.hotel.model.Book;
import com.hotel.model.Manage;
import com.hotel.service.BookService;
import com.hotel.utils.Pager;


@Service("bookService")
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;
    
    @Override
    public Pager<Book> listAll() {
        // TODO Auto-generated method stub
        return bookDao.listAll();
    }
    
    @Override
    public Book bookDetail(int bookId) {
        // TODO Auto-generated method stub
        return bookDao.bookDetail(bookId);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.BookService#listAllLive()
     */
    @Override
    public Pager<Book> listAllLive() {
        // TODO Auto-generated method stub
        return bookDao.listAllLive();
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.BookService#delBook(int)
     */
    @Override
    public void delBook(int bookId) {
      //  Book b=BookDao.load(bookId);
         bookDao.delete(bookId);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.BookService#updateBook(com.hotel.model.Book)
     */
    @Override
    public void updateBook(Book book) {
        bookDao.update(book);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.BookService#roomInfo(java.lang.String)
     */
    @Override
    public List<Book> roomInfo(String roomCatName) {
        // TODO Auto-generated method stub
        return  bookDao.roomInfo(roomCatName);
    }

    /* (非 Javadoc)
     * Description:
     * @see com.hotel.service.BookService#load(int)
     */
    @Override
    public Book load(int bookId) {
        // TODO Auto-generated method stub
        return bookDao.load(bookId);
    }

}
