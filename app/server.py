import web

class hello:
    def GET(self, name):
        return 'Hello ' + (name or 'World')

urls = ('/hello/(.*)', 'hello')

if __name__ == '__main__':
    app = web.application(urls, globals())
    app.run()
