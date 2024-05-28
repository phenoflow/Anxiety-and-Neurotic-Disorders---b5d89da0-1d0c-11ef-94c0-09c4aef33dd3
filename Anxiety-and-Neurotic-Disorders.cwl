cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anxiety-and-neurotic-disorders-acrophobia---primary:
    run: anxiety-and-neurotic-disorders-acrophobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  anxiety-and-neurotic-disorders---primary:
    run: anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-acrophobia---primary/output
  compulsive-anxiety-and-neurotic-disorders---primary:
    run: compulsive-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-hystericu---primary:
    run: anxiety-and-neurotic-disorders-hystericu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: compulsive-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-psychalgia---primary:
    run: anxiety-and-neurotic-disorders-psychalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-hystericu---primary/output
  anxiety-and-neurotic-disorders-aphonia---primary:
    run: anxiety-and-neurotic-disorders-aphonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-psychalgia---primary/output
  psychogenic-anxiety-and-neurotic-disorders---primary:
    run: psychogenic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-aphonia---primary/output
  anxiety-and-neurotic-disorders-backache---primary:
    run: anxiety-and-neurotic-disorders-backache---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: psychogenic-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-psychosis---primary:
    run: anxiety-and-neurotic-disorders-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-backache---primary/output
  anxiety-and-neurotic-disorders-personality---primary:
    run: anxiety-and-neurotic-disorders-personality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-psychosis---primary/output
  anxious-anxiety-and-neurotic-disorders---primary:
    run: anxious-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-personality---primary/output
  anxiety-and-neurotic-disorders-hiccough---primary:
    run: anxiety-and-neurotic-disorders-hiccough---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anxious-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-neurosis---primary:
    run: anxiety-and-neurotic-disorders-neurosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-hiccough---primary/output
  musculoskeletal-anxiety-and-neurotic-disorders---primary:
    run: musculoskeletal-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-neurosis---primary/output
  anxiety-and-neurotic-disorders-claustrophobia---primary:
    run: anxiety-and-neurotic-disorders-claustrophobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: musculoskeletal-anxiety-and-neurotic-disorders---primary/output
  mental-anxiety-and-neurotic-disorders---primary:
    run: mental-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-claustrophobia---primary/output
  anxiety-and-neurotic-disorders-briquet---primary:
    run: anxiety-and-neurotic-disorders-briquet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: mental-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-flashback---primary:
    run: anxiety-and-neurotic-disorders-flashback---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-briquet---primary/output
  anxiety-and-neurotic-disorders-reaction---primary:
    run: anxiety-and-neurotic-disorders-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-flashback---primary/output
  anxiety-and-neurotic-disorders-asthenia---primary:
    run: anxiety-and-neurotic-disorders-asthenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-reaction---primary/output
  posttraumatic-anxiety-and-neurotic-disorders---primary:
    run: posttraumatic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-asthenia---primary/output
  anxiety-and-neurotic-disorders-specified---primary:
    run: anxiety-and-neurotic-disorders-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: posttraumatic-anxiety-and-neurotic-disorders---primary/output
  confusional-anxiety-and-neurotic-disorders---primary:
    run: confusional-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-specified---primary/output
  anxiety-and-neurotic-disorders-state---primary:
    run: anxiety-and-neurotic-disorders-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: confusional-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-ganser---primary:
    run: anxiety-and-neurotic-disorders-ganser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-state---primary/output
  anxiety-and-neurotic-disorders-torticolli---primary:
    run: anxiety-and-neurotic-disorders-torticolli---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-ganser---primary/output
  panic-anxiety-and-neurotic-disorders---primary:
    run: panic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-torticolli---primary/output
  mixed-anxiety-and-neurotic-disorders---primary:
    run: mixed-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: panic-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-amnesia---primary:
    run: anxiety-and-neurotic-disorders-amnesia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: mixed-anxiety-and-neurotic-disorders---primary/output
  social-anxiety-and-neurotic-disorders---primary:
    run: social-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-amnesia---primary/output
  academic-anxiety-and-neurotic-disorders---primary:
    run: academic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: social-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-globus---primary:
    run: anxiety-and-neurotic-disorders-globus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: academic-anxiety-and-neurotic-disorders---primary/output
  phobic-anxiety-and-neurotic-disorders---primary:
    run: phobic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-globus---primary/output
  anxiety-and-neurotic-disorders-somatization---primary:
    run: anxiety-and-neurotic-disorders-somatization---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: phobic-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-psychasthenia---primary:
    run: anxiety-and-neurotic-disorders-psychasthenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-somatization---primary/output
  anxiety-and-neurotic-disorders-attacks---primary:
    run: anxiety-and-neurotic-disorders-attacks---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-psychasthenia---primary/output
  anxiety-and-neurotic-disorders-nerve---primary:
    run: anxiety-and-neurotic-disorders-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-attacks---primary/output
  anxiety-and-neurotic-disorders-pregnancy---primary:
    run: anxiety-and-neurotic-disorders-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-nerve---primary/output
  anxiety-and-neurotic-disorders-depression---primary:
    run: anxiety-and-neurotic-disorders-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-pregnancy---primary/output
  anxiety-and-neurotic-disorders-agoraphobia---primary:
    run: anxiety-and-neurotic-disorders-agoraphobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-depression---primary/output
  anxiety-and-neurotic-disorders-respiratory---primary:
    run: anxiety-and-neurotic-disorders-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-agoraphobia---primary/output
  military-anxiety-and-neurotic-disorders---primary:
    run: military-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-respiratory---primary/output
  anxiety-and-neurotic-disorders-conversion---primary:
    run: anxiety-and-neurotic-disorders-conversion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: military-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-nervousness---primary:
    run: anxiety-and-neurotic-disorders-nervousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-conversion---primary/output
  obsessional-anxiety-and-neurotic-disorders---primary:
    run: obsessional-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-nervousness---primary/output
  anxiety-and-neurotic-disorders-phobia---primary:
    run: anxiety-and-neurotic-disorders-phobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: obsessional-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-paralysis---primary:
    run: anxiety-and-neurotic-disorders-paralysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-phobia---primary/output
  anxiety-and-neurotic-disorders-deafness---primary:
    run: anxiety-and-neurotic-disorders-deafness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-paralysis---primary/output
  anxiety-and-neurotic-disorders-depersonalisation---primary:
    run: anxiety-and-neurotic-disorders-depersonalisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-deafness---primary/output
  cardiovascular-anxiety-and-neurotic-disorders---primary:
    run: cardiovascular-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-depersonalisation---primary/output
  anxiety-and-neurotic-disorders-somatoform---primary:
    run: anxiety-and-neurotic-disorders-somatoform---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cardiovascular-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-fear---primary:
    run: anxiety-and-neurotic-disorders-fear---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-somatoform---primary/output
  anxiety-and-neurotic-disorders-dyspepsia---primary:
    run: anxiety-and-neurotic-disorders-dyspepsia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-fear---primary/output
  gastrointestinal-anxiety-and-neurotic-disorders---primary:
    run: gastrointestinal-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-dyspepsia---primary/output
  anxiety-and-neurotic-disorders-stress---primary:
    run: anxiety-and-neurotic-disorders-stress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: gastrointestinal-anxiety-and-neurotic-disorders---primary/output
  animal-anxiety-and-neurotic-disorders---primary:
    run: animal-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-stress---primary/output
  psychosomatic-anxiety-and-neurotic-disorders---primary:
    run: psychosomatic-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: animal-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-undifferentiated---primary:
    run: anxiety-and-neurotic-disorders-undifferentiated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: psychosomatic-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-hypochondriasis---primary:
    run: anxiety-and-neurotic-disorders-hypochondriasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-undifferentiated---primary/output
  anxiety-and-neurotic-disorders-neurasthenia---primary:
    run: anxiety-and-neurotic-disorders-neurasthenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-hypochondriasis---primary/output
  multiple-anxiety-and-neurotic-disorders---primary:
    run: multiple-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-neurasthenia---primary/output
  anxiety-and-neurotic-disorders-thought---primary:
    run: anxiety-and-neurotic-disorders-thought---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: multiple-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-fugue---primary:
    run: anxiety-and-neurotic-disorders-fugue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-thought---primary/output
  anxiety-and-neurotic-disorders-dysuria---primary:
    run: anxiety-and-neurotic-disorders-dysuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-fugue---primary/output
  anxiety-and-neurotic-disorders-diarrhoea---primary:
    run: anxiety-and-neurotic-disorders-diarrhoea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-dysuria---primary/output
  anxiety-and-neurotic-disorders-dhat---primary:
    run: anxiety-and-neurotic-disorders-dhat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-diarrhoea---primary/output
  anxiety-and-neurotic-disorders-stupor---primary:
    run: anxiety-and-neurotic-disorders-stupor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-dhat---primary/output
  anxiety-and-neurotic-disorders-cardiac---primary:
    run: anxiety-and-neurotic-disorders-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-stupor---primary/output
  anxiety-and-neurotic-disorders-flying---primary:
    run: anxiety-and-neurotic-disorders-flying---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-cardiac---primary/output
  anxiety-and-neurotic-disorders-costa's---primary:
    run: anxiety-and-neurotic-disorders-costa's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-flying---primary/output
  dissociative-anxiety-and-neurotic-disorders---primary:
    run: dissociative-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-costa's---primary/output
  genitourinary-anxiety-and-neurotic-disorders---primary:
    run: genitourinary-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: dissociative-anxiety-and-neurotic-disorders---primary/output
  hypochondriacal-anxiety-and-neurotic-disorders---primary:
    run: hypochondriacal-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: genitourinary-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-pseudoseizures---primary:
    run: anxiety-and-neurotic-disorders-pseudoseizures---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: hypochondriacal-anxiety-and-neurotic-disorders---primary/output
  neurotic---primary:
    run: neurotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-pseudoseizures---primary/output
  occupational-anxiety-and-neurotic-disorders---primary:
    run: occupational-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: neurotic---primary/output
  anxiety-and-neurotic-disorders-malfunction---primary:
    run: anxiety-and-neurotic-disorders-malfunction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: occupational-anxiety-and-neurotic-disorders---primary/output
  other-anxiety-and-neurotic-disorders---primary:
    run: other-anxiety-and-neurotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-malfunction---primary/output
  anxiety-and-neurotic-disorders-cramp---primary:
    run: anxiety-and-neurotic-disorders-cramp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: other-anxiety-and-neurotic-disorders---primary/output
  anxiety-and-neurotic-disorders-fatigue---primary:
    run: anxiety-and-neurotic-disorders-fatigue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-cramp---primary/output
  anxiety-and-neurotic-disorders-tenseness---primary:
    run: anxiety-and-neurotic-disorders-tenseness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-fatigue---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: anxiety-and-neurotic-disorders-tenseness---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
