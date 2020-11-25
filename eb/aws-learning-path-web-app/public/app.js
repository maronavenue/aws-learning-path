var data = {
    title: 'AWS Learning Path',
    selected: null,
    question: 'Which path will you take?',
    choices: [
      'Developer (DVA-C01)',
      'Solutions Architect (SAA-C02)',
      'SysOps Administrator (SOA-C01)'
    ]
  }
  
  var Choice = {
    click: function(n){
      return function(){
        data.selected = n
      }
    },
    classes: function(n){
      if (data.selected === n){
        return 'active'
      } else {
        return ''
      }
    },
    view: function(vnode){
      var n = vnode.attrs.index
      return m('.choice',{ class: Choice.classes(n), onclick: Choice.click(n) },
        m('span.l'),
        m('span.v',data.choices[n])
      )
    }
  }

  var AWSPathApp = {
    submit: function(){
      m.request({
          method: "GET",
          url: "/hello",
          params: {selected: data.selected},
      })
      .then(function(data) {
        console.log('data',data)
        var choice = parseInt(data.index);
        var description = "";
        var more_description = "";
        console.log(choice);
        switch(choice) {
          case 0:
            description = "The AWS Certified Developer - Associate examination is intended for individuals " +
              "who perform a development role and have one or more years of hands-on experience " +
              "developing and maintaining an AWS-based application.";
            more_description = "https://aws.amazon.com/certification/certified-developer-associate/";
            break;
          case 1:
            description = "The AWS Certified Solutions Architect - Associate examination is intended for " +
              "individuals who perform a solutions architect role and have one or more years of hands-on " +
              "experience designing available, cost-efficient, fault-tolerant, and scalable distributed systems on AWS.";
            more_description = "https://aws.amazon.com/certification/certified-solutions-architect-associate/";
            break;
          case 2:
            description = "The AWS Certified SysOps Administrator – Associate examination is intended for systems " +
              "administrators in a systems operations role with at least one year of experience in deployment, " +
              "management, and operations on AWS.";
            more_description = "https://aws.amazon.com/certification/certified-sysops-admin-associate/";
            break;
        }
        window.alert(description);
        window.location.href = more_description;
      })
    },
    view: function() {
      return m('main', [
        m("h1", data.title),
        m('article',
          m('h2','Associate-level certifications:'),
          m('.question',data.question),
          m(Choice,{index: 0}),
          m(Choice,{index: 1}),
          m(Choice,{index: 2}),
          m('.submit',
            m("button", {onclick: AWSPathApp.submit}, 'Enter')
          )
        )
      ])
    }
  }
  
  m.mount(document.body, AWSPathApp)