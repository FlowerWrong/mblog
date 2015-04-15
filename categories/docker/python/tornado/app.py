import tornado.ioloop
import tornado.web
from redis import Redis
import os
import MySQLdb
import torndb

redis = Redis(host='redis', port=6379)

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        #self.write("Hello, world")
    	redis.incr('hits')
    	# data = redis.get('hits')
    	db = MySQLdb.connect("mysql","yang","12345678","tornado" )
		cursor = db.cursor()
		cursor.execute("SELECT VERSION()")
		data = cursor.fetchone()
		db.close()
        self.write('Hello World! I have been seen %s times.' % data)

application = tornado.web.Application([
    (r"/", MainHandler),
])

if __name__ == "__main__":
    application.listen(8888, address='0.0.0.0')
    tornado.ioloop.IOLoop.instance().start()