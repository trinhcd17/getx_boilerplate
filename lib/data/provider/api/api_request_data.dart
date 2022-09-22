enum HTTPMethod { get, post, delete, put, patch }

extension HTTPMethodString on HTTPMethod {
  String get string {
    switch (this) {
      case HTTPMethod.get:
        return "get";
      case HTTPMethod.post:
        return "post";
      case HTTPMethod.delete:
        return "delete";
      case HTTPMethod.patch:
        return "patch";
      case HTTPMethod.put:
        return "put";
    }
  }
}

class ApiRequestData {
  final String url;
  final HTTPMethod method;
  final Map<String, String>? headers;
  final Map<String, String>? query;
  final dynamic body;

  ApiRequestData(
    this.url, {
    required this.method,
    this.headers,
    this.query,
    this.body,
  });
}
