class PoliticalsParty {
  PoliticalsParty({
      this.dados, 
      this.links,});

  PoliticalsParty.fromJson(dynamic json) {
    if (json['dados'] != null) {
      dados = [];
      json['dados'].forEach((v) {
        dados?.add(PoliticalParty.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
  }
  List<PoliticalParty>? dados;
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
      this.rel, 
      this.href,});

  Links.fromJson(dynamic json) {
    rel = json['rel'];
    href = json['href'];
  }
  String? rel;
  String? href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rel'] = rel;
    map['href'] = href;
    return map;
  }

}

class PoliticalParty {
  PoliticalParty({
      this.id, 
      this.sigla, 
      this.nome, 
      this.uri,});

  PoliticalParty.fromJson(dynamic json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
    uri = json['uri'];
  }
  int? id;
  String? sigla;
  String? nome;
  String? uri;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sigla'] = sigla;
    map['nome'] = nome;
    map['uri'] = uri;
    return map;
  }

}