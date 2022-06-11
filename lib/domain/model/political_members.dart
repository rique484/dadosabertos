class PoliticalMembers {
  PoliticalMembers({
      this.dados, 
      this.links,});

  PoliticalMembers.fromJson(dynamic json) {
    if (json['dados'] != null) {
      dados = [];
      json['dados'].forEach((v) {
        dados?.add(Member.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
  }
  List<Member>? dados;
  List<Links>? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dados != null) {
      map['dados'] = dados?.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      map['links'] = links?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Links {
  Links({
      this.href, 
      this.rel, 
      this.type,});

  Links.fromJson(dynamic json) {
    href = json['href'];
    rel = json['rel'];
    type = json['type'];
  }
  String? href;
  String? rel;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['rel'] = rel;
    map['type'] = type;
    return map;
  }

}

class Member {
  Member({
      this.email, 
      this.id, 
      this.idLegislatura, 
      this.nome, 
      this.siglaPartido, 
      this.siglaUf, 
      this.uri, 
      this.uriPartido, 
      this.urlFoto,});

  Member.fromJson(dynamic json) {
    email = json['email'];
    id = json['id'];
    idLegislatura = json['idLegislatura'];
    nome = json['nome'];
    siglaPartido = json['siglaPartido'];
    siglaUf = json['siglaUf'];
    uri = json['uri'];
    uriPartido = json['uriPartido'];
    urlFoto = json['urlFoto'];
  }
  String? email;
  int? id;
  int? idLegislatura;
  String? nome;
  String? siglaPartido;
  String? siglaUf;
  String? uri;
  String? uriPartido;
  String? urlFoto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['id'] = id;
    map['idLegislatura'] = idLegislatura;
    map['nome'] = nome;
    map['siglaPartido'] = siglaPartido;
    map['siglaUf'] = siglaUf;
    map['uri'] = uri;
    map['uriPartido'] = uriPartido;
    map['urlFoto'] = urlFoto;
    return map;
  }

}