package com.greenhouse9.bookmaster.lecture;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

@Service
public class BookService {

	private static String resource = "mybatis-config.xml";

	private BookMapper mapper;

	public List<Book> selectAllBook() throws IOException{

        SqlSession session = getSession();

        mapper = session.getMapper(BookMapper.class);
		List<Book> bookList = mapper.selectAllBooks();
		//List<Book> bookList = null;

		session.close();

		return bookList;
	}

	private SqlSession getSession() throws IOException{

		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        return session;

	}
}