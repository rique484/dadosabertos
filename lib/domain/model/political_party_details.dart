class PoliticalPartyDetails {
  PoliticalPartyDetails({
      this.dados, 
      this.links,});

  PoliticalPartyDetails.fromJson(dynamic json) {
    dados = json['dados'] != null ? Details.fromJson(json['dados']) : null;
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
  }
  Details? dados;
  List<Links>? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dados != null) {
      map['dados'] = dados?.toJson();
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

class Details {
  Details({
      this.id, 
      this.nome, 
      this.numeroEleitoral, 
      this.sigla, 
      this.status, 
      this.uri, 
      this.urlFacebook, 
      this.urlLogo, 
      this.urlWebSite,});

  Details.fromJson(dynamic json) {
    id = json['id'];
    nome = json['nome'];
    numeroEleitoral = json['numeroEleitoral'];
    sigla = json['sigla'];
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    uri = json['uri'];
    urlFacebook = json['urlFacebook'];
    urlLogo = json['urlLogo'];
    urlWebSite = json['urlWebSite'];
  }
  int? id;
  String? nome;
  int? numeroEleitoral;
  String? sigla;
  Status? status;
  String? uri;
  String? urlFacebook;
  String? urlLogo;
  String? urlWebSite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['nome'] = nome;
    map['numeroEleitoral'] = numeroEleitoral;
    map['sigla'] = sigla;
    if (status != null) {
      map['status'] = status?.toJson();
    }
    map['uri'] = uri;
    map['urlFacebook'] = urlFacebook;
    map['urlLogo'] = urlLogo;
    map['urlWebSite'] = urlWebSite;
    return map;
  }

}

class Status {
  Status({
      this.data, 
      this.idLegislatura, 
      this.lider, 
      this.situacao, 
      this.totalMembros, 
      this.totalPosse, 
      this.uriMembros,});

  Status.fromJson(dynamic json) {
    data = json['data'];
    idLegislatura = json['idLegislatura'];
    lider = json['lider'] != null ? Lider.fromJson(json['lider']) : null;
    situacao = json['situacao'];
    totalMembros = json['totalMembros'];
    totalPosse = json['totalPosse'];
    uriMembros = json['uriMembros'];
  }
  String? data;
  String? idLegislatura;
  Lider? lider;
  String? situacao;
  String? totalMembros;
  String? totalPosse;
  String? uriMembros;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['idLegislatura'] = idLegislatura;
    if (lider != null) {
      map['lider'] = lider?.toJson();
    }
    map['situacao'] = situacao;
    map['totalMembros'] = totalMembros;
    map['totalPosse'] = totalPosse;
    map['uriMembros'] = uriMembros;
    return map;
  }

}

class Lider {
  Lider({
      this.idLegislatura, 
      this.nome, 
      this.siglaPartido, 
      this.uf, 
      this.uri, 
      this.uriPartido, 
      this.urlFoto,});

  Lider.fromJson(dynamic json) {
    idLegislatura = json['idLegislatura'];
    nome = json['nome'];
    siglaPartido = json['siglaPartido'];
    uf = json['uf'];
    uri = json['uri'];
    uriPartido = json['uriPartido'];
    urlFoto = json['urlFoto'];
  }
  int? idLegislatura;
  String? nome;
  String? siglaPartido;
  String? uf;
  String? uri;
  String? uriPartido;
  String? urlFoto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idLegislatura'] = idLegislatura;
    map['nome'] = nome;
    map['siglaPartido'] = siglaPartido;
    map['uf'] = uf;
    map['uri'] = uri;
    map['uriPartido'] = uriPartido;
    map['urlFoto'] = urlFoto;
    return map;
  }

}