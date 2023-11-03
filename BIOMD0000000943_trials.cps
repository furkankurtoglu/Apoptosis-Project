<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2023-10-29T16:16:17Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="36" versionDevel="260" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for R12_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g10+g13*Mdm2_nuc_S166S186phosphorylated^h)*p53_killer
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Mdm2_nuc_S166S186phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_263" name="g10" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="g13" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_261" name="h" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_250" name="p53_killer" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R1_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (h1*DNA_DSB_due_to_IR*is_IR_switched_on+h2*Caspase)*(DNA_DSB_max-DNA_double_strand_break)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Caspase" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_268" name="DNA_DSB_due_to_IR" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_267" name="DNA_DSB_max" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_266" name="DNA_double_strand_break" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_265" name="h1" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_270" name="h2" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_271" name="is_IR_switched_on" order="6" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function modifier_9" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u3*Bad_phosphorylated_Fourteen33_complex
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="Bad_phosphorylated_Fourteen33_complex" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_277" name="u3" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R82_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a2*Caspase^2*proCaspase
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Caspase" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_276" name="a2" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_274" name="proCaspase" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function modifier_7" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        u2*BclXL_Bad_complex
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="BclXL_Bad_complex" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_272" name="u2" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function modifier_6" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        t4*Bax_mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="Bax_mRNA" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_273" name="t4" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function modifier_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        t1*Wip1_mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="Wip1_mRNA" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_281" name="t1" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function substrate modifier_11" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d6*Wip1*Mdm2_nuc_S166S186p_S395p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="Mdm2_nuc_S166S186p_S395p" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_283" name="Wip1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_285" name="d6" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function modifier_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        t3*Mdm2_mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="Mdm2_mRNA" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_287" name="t3" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function substrate modifier_7" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d4*Wip1*p53_killer
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="Wip1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_286" name="d4" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_290" name="p53_killer" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function substrate modifier_9" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p5*AKT_phosphorylated*Mdm2_cyt_0phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="AKT_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_292" name="Mdm2_cyt_0phosphorylated" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_291" name="p5" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function substrate modifier_10" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p6*ATM_phosphorylated*Mdm2_nuc_S166S186phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="ATM_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_295" name="Mdm2_nuc_S166S186phosphorylated" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_294" name="p6" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R22_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s1*(q0_wip1+q1_wip1*p53_arrester^h)/(q2+q0_wip1+q1_wip1*p53_arrester^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="h" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_298" name="p53_arrester" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_297" name="q0_wip1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_300" name="q1_wip1" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_301" name="q2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_302" name="s1" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R12_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g10+g13*Mdm2_nuc_S166S186phosphorylated^h)*p53_S46phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="Mdm2_nuc_S166S186phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_307" name="g10" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_306" name="g13" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_305" name="h" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_304" name="p53_S46phosphorylated" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R8_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g7*HIPK2*(SIAH1_0+Mdm2_nuc_S166S186phosphorylated)^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="HIPK2" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_311" name="Mdm2_nuc_S166S186phosphorylated" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_310" name="SIAH1_0" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_309" name="g7" order="3" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function substrate modifier_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d11*Wip1*p53_S46phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="Wip1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_314" name="d11" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_313" name="p53_S46phosphorylated" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R22_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s3*(q0_mdm2+q1_mdm2*p53_arrester^h)/(q2+q0_mdm2+q1_mdm2*p53_arrester^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="h" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_316" name="p53_arrester" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_303" name="q0_mdm2" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_318" name="q1_mdm2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_319" name="q2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_320" name="s3" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R22_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s2*(q0_pten+q1_pten*p53_killer^h)/(q2+q0_pten+q1_pten*p53_killer^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="h" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_325" name="p53_killer" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_324" name="q0_pten" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_323" name="q1_pten" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_322" name="q2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_321" name="s2" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function substrate modifier_8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p3*ATM_phosphorylated*p53_S46phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="ATM_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_331" name="p3" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_330" name="p53_S46phosphorylated" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R22_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s5*(q0_p21+q1_p21*p53_arrester^h)/(q2+q0_p21+q1_p21*p53_arrester^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="h" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_328" name="p53_arrester" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_329" name="q0_p21" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_333" name="q1_p21" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_334" name="q2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_335" name="s5" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R53_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d12*Rb_phosphorylated/(M2+Rb_phosphorylated)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="M2" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_340" name="Rb_phosphorylated" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_339" name="d12" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R22_5" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s4*(q0_bax+q1_bax*p53_killer^h)/(q2+q0_bax+q1_bax*p53_killer^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="h" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_337" name="p53_killer" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_338" name="q0_bax" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_342" name="q1_bax" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_343" name="q2" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_344" name="s4" order="5" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function substrate modifier_14" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p9*Cyclin_E__free*Rb1_0__free
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="Cyclin_E__free" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_349" name="Rb1_0__free" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_348" name="p9" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function modifier_8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d9*Bad_phosphorylated_Fourteen33_complex
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="Bad_phosphorylated_Fourteen33_complex" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_346" name="d9" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function modifier1 modifier2_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p7*AKT_phosphorylated*BclXL_Bad_complex
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="AKT_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_347" name="BclXL_Bad_complex" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_352" name="p7" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function substrate modifier_12" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d7*PTEN*PIP3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="PIP3" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_354" name="PTEN" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_353" name="d7" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function substrate modifier_18" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_66" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a1*Bax__free*proCaspase
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="Bax__free" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_357" name="a1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_356" name="proCaspase" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function substrate modifier_16" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p7*AKT_phosphorylated*Bad_0__free
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="AKT_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_360" name="Bad_0__free" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_359" name="p7" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function substrate modifier_17" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        b3*Fourteen33_free*Bad_phosphorylated__free
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="Bad_phosphorylated__free" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_363" name="Fourteen33_free" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_362" name="b3" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function substrate modifier_5" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_69" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p11*HIPK2*p53_0phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="HIPK2" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_366" name="p11" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_365" name="p53_0phosphorylated" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function substrate modifier_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p3*ATM_phosphorylated*p53_0phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="ATM_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_369" name="p3" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_368" name="p53_0phosphorylated" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function substrate modifier_6" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p4*HIPK2*p53_arrester
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="HIPK2" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_372" name="p4" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_371" name="p53_arrester" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function substrate modifier_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_72" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p2*ATM_phosphorylated*SIAH1_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="ATM_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_375" name="SIAH1_0" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_374" name="p2" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for R12_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g101+g12*Mdm2_nuc_S166S186phosphorylated^h)*p53_arrester
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="Mdm2_nuc_S166S186phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_378" name="g101" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_377" name="g12" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_380" name="h" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_381" name="p53_arrester" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for R43_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_74" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p8*PIP2*PI3K_tot
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="PI3K_tot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_385" name="PIP2" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_384" name="p8" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for R45_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p12*AKT_0*PIP3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_387" name="AKT_0" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_382" name="PIP3" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_383" name="p12" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function substrate modifier_13" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_76" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        b4*E2F1*Rb1_0__free
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="E2F1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_389" name="Rb1_0__free" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_388" name="b4" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function substrate modifier_15" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_77" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p10*Cyclin_E__free*Rb1_0_E2F1_complex
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="Cyclin_E__free" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_392" name="Rb1_0_E2F1_complex" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_391" name="p10" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for R4_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_78" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p1*ATM_0*DNA_double_strand_break^h/(DNA_double_strand_break^h+M1^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="ATM_0" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_395" name="DNA_double_strand_break" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_394" name="M1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_397" name="h" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_398" name="p1" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function modifier_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_79" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        t2*PTEN_mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="PTEN_mRNA" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_402" name="t2" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function modifier_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_80" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d2*SIAH1_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_400" name="SIAH1_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_401" name="d2" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function substrate modifier_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_81" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d1*Wip1*ATM_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="ATM_phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_399" name="Wip1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_405" name="d1" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function modifier_5" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_82" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        t5*p21_mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="p21_mRNA" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_407" name="t5" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for R12_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_83" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g101+g11*Mdm2_nuc_S166S186phosphorylated^h)*p53_0phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="Mdm2_nuc_S166S186phosphorylated" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_406" name="g101" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_410" name="g11" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_411" name="h" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_412" name="p53_0phosphorylated" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for R59_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_84" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s9*E2F1^2/(M3^2+E2F1^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_417" name="E2F1" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_416" name="M3" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_415" name="s9" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for R2_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_85" />
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DNA_double_strand_break*rep/(DNA_double_strand_break+DNA_DSB_RepairCplx_total)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="DNA_DSB_RepairCplx_total" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_413" name="DNA_double_strand_break" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_414" name="rep" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Hat2016 - Reponse of p53 System to irradiation in cell fate decision making" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.1371/journal.pcbi.1004787"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T14:50:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>ahmad.azd@hotmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Zyoud</vCard:Family>
                <vCard:Given>Ahmad</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>matt.maire@free.fr</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>MAIRE</vCard:Family>
                <vCard:Given>Matthieu</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-04T18:01:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0007049"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1809060002"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000943"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>The p53 transcription factor is a regulator of key cellular processes including DNA repair, cell cycle arrest, and apoptosis. In this theoretical study, we investigate how the complex circuitry of the p53 network allows for stochastic yet unambiguous cell fate decision-making. The proposed Markov chain model consists of the regulatory core and two subordinated bistable modules responsible for cell cycle arrest and apoptosis. The regulatory core is controlled by two negative feedback loops (regulated by Mdm2 and Wip1) responsible for oscillations, and two antagonistic positive feedback loops (regulated by phosphatases Wip1 and PTEN) responsible for bistability. By means of bifurcation analysis of the deterministic approximation we capture the recurrent solutions (i.e., steady states and limit cycles) that delineate temporal responses of the stochastic system. Direct switching from the limit-cycle oscillations to the "apoptotic" steady state is enabled by the existence of a subcritical Neimark-Sacker bifurcation in which the limit cycle loses its stability by merging with an unstable invariant torus. Our analysis provides an explanation why cancer cell lines known to have vastly diverse expression levels of Wip1 and PTEN exhibit a broad spectrum of responses to DNA damage: from a fast transition to a high level of p53 killer (a p53 phosphoform which promotes commitment to apoptosis) in cells characterized by high PTEN and low Wip1 levels to long-lasting p53 level oscillations in cells having PTEN promoter methylated (as in, e.g., MCF-7 cell line).</pre>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="nuclear" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13361" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="cytoplasm" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005737" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="DNA_double_strand_break" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035861" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="ATM_phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13315" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="SIAH1_0" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8IUQ4" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="HIPK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9H2X6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="p53_0phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04637" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="p53_arrester" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04637" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="p53_S46phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04637" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Mdm2_nuc_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00987" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Wip1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15297" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="p53_killer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04637" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Mdm2 mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33697" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00987" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Mdm2_cyt_0phosphorylated" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00987" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Mdm2_cyt_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00987" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="AKT_phosphorylated" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Mdm2_nuc_S166S186p_S395p" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00987" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Wip1 mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33697" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15297" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PTEN mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33697" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P60484" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PTEN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P60484" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PIP3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:11:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="p21_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33697" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17388" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="p21_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17388" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Cyclin_E (free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Cyclin_E:p21_complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17388" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Rb1_0_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Rb1_0:E2F1 complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Bax_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33697"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Bax_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="BclXL_(free)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07817" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Bax:BclXL_complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Bad_0_(free)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Bad_phosphorylated_(free)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="proCaspase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C48044" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Caspase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42575" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="ATM_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13315" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="AKT_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PIP_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T13:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="PI3K_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P27986" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="E2F1_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Fourteen33_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31947" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="ATM_0" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13315" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="SIAH1_phosphorylated" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8IUQ4" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_0],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="AKT_0" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[AKT_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="PIP2" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T16:47:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Rb_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="SIAH1_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8IUQ4" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Bad_tot" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="BclXL_tot" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07817" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Rb_phosphorylated" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="E2F1" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[E2F1_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="BclXL_Bad_complex" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07817" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_(free)],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="Bad_phosphorylated_Fourteen33_complex" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q92934" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31947" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Fourteen33_free" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31947" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Fourteen33_tot],Reference=Concentration>-&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="is_IR_switched_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="h1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="h2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T16:11:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[can_Caspase_make_DNA_DSB],Reference=Value>*1e-13
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="can_Caspase_make_DNA_DSB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="rep" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T16:12:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[has_DNA_DSB_repair],Reference=Value>*0.001
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="has_DNA_DSB_repair" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="a2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="q0_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="q0_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="q0_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="q0_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="q0_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="q1_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="q1_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="q1_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="q1_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="q1_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="q2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="s1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="s2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="s3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="s4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="s5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="t2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="t3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="t4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="t5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="s6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="s7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="s8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="s9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="s10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="p2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="p3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="p4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="p5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="p6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="p7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="p8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="p9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="p10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="p11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="p12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="d2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="d3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="d4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="d5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="d6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="d7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="d8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="d9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="d10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="d11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="d12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="b1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="b2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="b3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="b4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="b5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="u1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="u2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="u3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="u5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="u6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="i1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="g1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="g2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="g3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="g4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="g5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="g6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="g7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="g8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="g9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="g10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="g101" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="g11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="g12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="g13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="g14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="g15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="g16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="g17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="g18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="g19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="g20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="M1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="M2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="M3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="DNA_DSB_RepairCplx_total" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="DNA_DSB_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:08:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="DNA_DSB_due_to_IR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T16:26:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[IR_Gy],Reference=Value>*&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_per_IR_Gy],Reference=Value>/&lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[tp2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="IR_Gy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:09:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="DNA_DSB_per_IR_Gy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-17T16:27:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="tp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-18T12:10:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="time_days" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-20T10:12:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time>/86400
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="DNA damage R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16507" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6212" name="DNA_DSB_due_to_IR" value="1"/>
          <Constant key="Parameter_6211" name="DNA_DSB_max" value="1"/>
          <Constant key="Parameter_6214" name="h1" value="1"/>
          <Constant key="Parameter_6215" name="h2" value="1"/>
          <Constant key="Parameter_6216" name="is_IR_switched_on" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="DNA Repair R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006281" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6217" name="DNA_DSB_RepairCplx_total" value="1"/>
          <Constant key="Parameter_6221" name="rep" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Dephoshorylation by Wip1 R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6225" name="d1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Phoshorylation due to IR R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6223" name="M1" value="1"/>
          <Constant key="Parameter_6220" name="h" value="1"/>
          <Constant key="Parameter_6219" name="p1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Phosphorylation by ATM_p R5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6218" name="p2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Dephosphorylation of SIAH1_p R6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6222" name="d2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Synthesis of HIPK2 R7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6224" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6226" name="g7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Synthesis of p53_0p R9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6234" name="v" value="300"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Phosphorylation by ATM_p on Ser15 and Ser20 R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6235" name="p3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Dephosphorylation spontaneous of p53_arrester R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6232" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6236" name="g101" value="1"/>
          <Constant key="Parameter_6233" name="g11" value="1"/>
          <Constant key="Parameter_6229" name="h" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Dephosphorylation of Ser46 by Wip1 R13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6230" name="d11" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Phosphorylation at Ser46 by HIPK2 R14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6227" name="p11" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6231" name="g101" value="1"/>
          <Constant key="Parameter_6228" name="g12" value="1"/>
          <Constant key="Parameter_6249" name="h" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Phosphorylation at Ser46 by HIPK2 R16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6251" name="p4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Dephosphorylation at Ser46 by Wip1 R17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6240" name="d4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Phosphorylation by ATM_p on Ser15 and Ser20 R18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6274" name="p3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6241" name="g10" value="1"/>
          <Constant key="Parameter_6268" name="g13" value="1"/>
          <Constant key="Parameter_6269" name="h" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6252" name="g10" value="1"/>
          <Constant key="Parameter_6237" name="g13" value="1"/>
          <Constant key="Parameter_6244" name="h" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Dephosphorylation of Ser15 and Ser20 R21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6253" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Transcription Mdm2 gene transcription R22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6238" name="h" value="1"/>
          <Constant key="Parameter_6255" name="q0_mdm2" value="1"/>
          <Constant key="Parameter_6243" name="q1_mdm2" value="1"/>
          <Constant key="Parameter_6250" name="q2" value="1"/>
          <Constant key="Parameter_6245" name="s3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Degradation spontaneous R23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6247" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Translation of mdm2 R24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6246" name="t3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Phosphorylation of Mdm2_cyt_0 by AKT_p R25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6248" name="p5" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Dephosphorylation at Ser166 and 186 R26" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6270" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Degradation spontaneous R27" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6239" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Nuclear import of Mdm2_cyto_S166S186p R28" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6242" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Degradation spontaneous R29" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6266" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Degradation spontaneous R30" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6273" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Phosphorylation by ATM_p at Ser395 R31" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6271" name="p6" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6262" name="d6" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Degradation spontaneous R33" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6264" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Degradation Ser395p-dependent R34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6260" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Transcription of Wip1 gene R35" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6265" name="h" value="1"/>
          <Constant key="Parameter_6272" name="q0_wip1" value="1"/>
          <Constant key="Parameter_6261" name="q1_wip1" value="1"/>
          <Constant key="Parameter_6267" name="q2" value="1"/>
          <Constant key="Parameter_6263" name="s1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Degradation R36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6258" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Translation of Wip mRNA R37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6256" name="t1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Translation of Wip mRNA R38" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6254" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Transcription of PTEN gene R39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6259" name="h" value="1"/>
          <Constant key="Parameter_6257" name="q0_pten" value="1"/>
          <Constant key="Parameter_6275" name="q1_pten" value="1"/>
          <Constant key="Parameter_6278" name="q2" value="1"/>
          <Constant key="Parameter_6279" name="s2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Degradation R40" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6277" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Translation of PTEN_mRNA R41" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6276" name="t2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="Degradation of PTEN R42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6281" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Phopshorylation of PIP2 by PI3K R43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6283" name="p8" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Dephosphorylation of PIP3 by PTENR44" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6284" name="d7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Phopshorylation at PIP3 R45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6282" name="p12" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Dephosphorylation of AKT R46" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6280" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Transcription of p21 gene R47" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6287" name="h" value="1"/>
          <Constant key="Parameter_6286" name="q0_p21" value="1"/>
          <Constant key="Parameter_6285" name="q1_p21" value="1"/>
          <Constant key="Parameter_6288" name="q2" value="1"/>
          <Constant key="Parameter_6289" name="s5" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Degradation of p21 mRNA R48" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6292" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Translation of p21 mRNA R49" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6290" name="t5" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Binding of Cyclin_E and p21 R50" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6291" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Dissociation of complex Cyclin_E:p21 R51" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6293" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Degradation of p21 R52" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6294" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Dephosphorylation of Rb1 at S567 R53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6297" name="M2" value="1"/>
          <Constant key="Parameter_6295" name="d12" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Binding of Rb1 and E2F1 R54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6296" name="b4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Phosphorylation of Rb1 by Cyclin_E  R55" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6299" name="p9" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Dissociation of Rb1:E2F1 complex R56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6298" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6300" name="p10" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Synthesis R58" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6302" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Synthesis induced by E2F1 R59" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6306" name="M3" value="1"/>
          <Constant key="Parameter_6305" name="s9" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Degradation R60" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6304" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Degradation R61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6307" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Transcription of Bax gene R62" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6301" name="h" value="1"/>
          <Constant key="Parameter_6303" name="q0_bax" value="1"/>
          <Constant key="Parameter_6308" name="q1_bax" value="1"/>
          <Constant key="Parameter_6309" name="q2" value="1"/>
          <Constant key="Parameter_6312" name="s4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="Degradation of Bax mRNA R63" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6310" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="Translation of Bax mRNA R64" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6315" name="t4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="Dissociation of Bax:BclXL complex R65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6313" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Binding of Bax and BclXL R66" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6317" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="Degradation R67" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6314" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="Dissociation of BclXL:Bad complex R68" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6311" name="u2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="Degradation of Bax in Bax:BclXL complex R69" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6191" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Phosphorylation of Bad in BclXL:Bad complex R70" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6190" name="p7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Binding of BclXL and Bad_0 R71" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6189" name="k1" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_27"/>
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Dephosphorylation R72" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6184" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="Dissociation of BclXL:Bad complex R73" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6192" name="u2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="Phosphorylation of Bad_0 by AKT_p R74" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6185" name="p7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6187" name="d9" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="Dissociation of Bad:14-3-3 complex R76" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6186" name="u3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6194" name="p7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="Binding of Bad_p and 14-3-3 R78" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6188" name="b3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="Synthesis of proCaspase R79" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6172" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="Degradation of proCaspase R80" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6169" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="Activation of caspases by active (free) Bax R81" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6171" name="a1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="Activation_autoactivation of caspases R82" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6173" name="a2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="Degradation of caspases R83" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6170" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Irradiation phase" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          2592000 le &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time> and &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time> le 2592600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[is_IR_switched_on]" targetKey="ModelValue_0">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Stop Irradiation phase" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time> ge 2592601
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[is_IR_switched_on]" targetKey="ModelValue_0">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[DNA_double_strand_break]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_0]" value="6.0221407599999999e+25" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[HIPK2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_0phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_arrester]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_S46phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Wip1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_killer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2 mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Mdm2_cyt_0phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[AKT_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Wip1 mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PTEN mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PTEN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p21_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p21_(free)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin_E (free)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin_E:p21_complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0_(free)]" value="1.8066422280000001e+26" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0:E2F1 complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax_(free)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_(free)]" value="6.0221407599999999e+25" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax:BclXL_complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_0_(free)]" value="3.6132844560000001e+25" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_(free)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[proCaspase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Caspase]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[AKT_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PI3K_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[E2F1_tot]" value="1.204428152e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Fourteen33_tot]" value="1.204428152e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_0]" value="6.0221407599999999e+25" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_phosphorylated]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[AKT_0]" value="6.0221407599999999e+25" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP2]" value="6.0221407599999999e+25" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_tot]" value="1.8066422280000001e+26" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_tot]" value="3.6132844560000001e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_tot]" value="6.0221407599999999e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_phosphorylated]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[E2F1]" value="1.204428152e+26" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_Bad_complex]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Fourteen33_free]" value="1.204428152e+26" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[is_IR_switched_on]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[h1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[h2]" value="1e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[can_Caspase_make_DNA_DSB]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[rep]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[has_DNA_DSB_repair]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[a1]" value="3e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[a2]" value="9.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q0_pten]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q0_wip1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q0_mdm2]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q0_bax]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q0_p21]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q1_pten]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q1_mdm2]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q1_wip1]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q1_p21]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q1_bax]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[q2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s2]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s4]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[t1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[t2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[t3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[t4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[t5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s6]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s7]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s8]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s9]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s10]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p2]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p3]" value="2.9999999999999997e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p5]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p6]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p7]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p8]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p9]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p10]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[p12]" value="1.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d1]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d2]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d3]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d6]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d7]" value="2.9999999999999999e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d8]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d9]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d10]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d12]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b1]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b3]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b4]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b5]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u3]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u6]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[i1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g2]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g3]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g4]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g5]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g6]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g7]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g8]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g9]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g10]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g101]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g11]" value="9.9999999999999994e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g12]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g13]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g14]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g15]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g16]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g17]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g18]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g19]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g20]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[h]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[M1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[M2]" value="100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[M3]" value="200000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_RepairCplx_total]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_max]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_due_to_IR]" value="0.16666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[IR_Gy]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_per_IR_Gy]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[tp2]" value="600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[time_days]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[DNA damage R1]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[DNA Repair R2]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephoshorylation by Wip1 R3]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phoshorylation due to IR R4]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p R5]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of SIAH1_p R6]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of HIPK2 R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of HIPK2 R7],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of p53_0p R9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of p53_0p R9],ParameterGroup=Parameters,Parameter=v" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription Mdm2 gene transcription R22]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R23],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of mdm2 R24]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R27],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[i1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R29],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R30],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R33],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation Ser395p-dependent R34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation Ser395p-dependent R34],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of Wip1 gene R35]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R36],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Wip mRNA R37]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Wip mRNA R38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Wip mRNA R38],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of PTEN gene R39]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R40],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of PTEN_mRNA R41]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of PTEN R42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of PTEN R42],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phopshorylation at PIP3 R45]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of AKT R46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of AKT R46],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of p21 gene R47]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 mRNA R48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 mRNA R48],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of p21 mRNA R49]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Cyclin_E and p21 R50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Cyclin_E and p21 R50],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 R52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 R52],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Rb1 and E2F1 R54]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis R58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis R58],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis induced by E2F1 R59]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R60],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R61],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of Bax gene R62]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax mRNA R63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax mRNA R63],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Bax mRNA R64]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Bax:BclXL complex R65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Bax:BclXL complex R65],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[u1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Bax and BclXL R66]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Bax and BclXL R66],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R67],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of BclXL:Bad complex R68]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of BclXL and Bad_0 R71]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of BclXL and Bad_0 R71],ParameterGroup=Parameters,Parameter=k1" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation R72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation R72],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of BclXL:Bad complex R73]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Bad_p and 14-3-3 R78]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of proCaspase R79]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of proCaspase R79],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[s7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of proCaspase R80]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of proCaspase R80],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Activation of caspases by active (free) Bax R81]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Activation_autoactivation of caspases R82]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of caspases R83]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of caspases R83],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[g18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 6.0221407599999999e+25 0 0 0 3.6132844560000001e+25 0 1.8066422280000001e+26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.0221407599999999e+25 0 0 0 0 0 0 0 0 0 6.0221407599999999e+25 0 6.0221407599999999e+25 0 1.204428152e+26 1.204428152e+26 6.0221407599999999e+25 0 0 1e-13 0.001 0.16666666666666666 0 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 6.0221407599999999e+25 1.204428152e+26 1.204428152e+26 1.8066422280000001e+26 6.0221407599999999e+25 3.6132844560000001e+25 6.0221407599999999e+25 1 1 1 9.9999999999999995e-07 1 1 3e-10 9.9999999999999998e-13 1.0000000000000001e-05 1.0000000000000001e-05 0.0001 1.0000000000000001e-05 1.0000000000000001e-05 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 0.0030000000000000001 0.10000000000000001 0.029999999999999999 0.10000000000000001 0.029999999999999999 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 300 30 30 30 3 0.00029999999999999997 1e-08 2.9999999999999997e-08 1e-10 1e-08 1e-08 3e-09 3e-09 3.0000000000000001e-06 3.0000000000000001e-06 1e-10 1.0000000000000001e-09 1e-08 3.0000000000000001e-05 0.0001 1e-10 0.0001 1e-10 2.9999999999999999e-07 0.0001 3.0000000000000001e-05 0.0001 1e-10 10000 3.0000000000000001e-05 0.0030000000000000001 0.0030000000000000001 1.0000000000000001e-05 1.0000000000000001e-05 0.001 0.001 0.001 0.0001 0.0001 0.001 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 3.0000000000000001e-05 1e-13 0.00029999999999999997 0.0001 1.0000000000000001e-05 1.0000000000000001e-05 9.9999999999999994e-12 1e-13 1e-13 0.0001 3.0000000000000001e-05 0.0001 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.0001 2 5 100000 200000 20 1000000 10 10 600 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="4000"/>
        <Parameter name="StepSize" type="float" value="100"/>
        <Parameter name="Duration" type="float" value="400000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Reaction Fluxes" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(DNA damage R1).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[DNA damage R1],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(DNA Repair R2).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[DNA Repair R2],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephoshorylation by Wip1 R3).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephoshorylation by Wip1 R3],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phoshorylation due to IR R4).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phoshorylation due to IR R4],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation by ATM_p R5).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p R5],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of SIAH1_p R6).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of SIAH1_p R6],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Synthesis of HIPK2 R7).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of HIPK2 R7],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Synthesis of p53_0p R9).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of p53_0p R9],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation by ATM_p on Ser15 and Ser20 R10).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation spontaneous of p53_arrester R11).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of Ser46 by Wip1 R13).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation at Ser46 by HIPK2 R14).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation at Ser46 by HIPK2 R16).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation at Ser46 by Wip1 R17).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation by ATM_p on Ser15 and Ser20 R18).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of Ser15 and Ser20 R21).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Transcription Mdm2 gene transcription R22).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription Mdm2 gene transcription R22],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous R23).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R23],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of mdm2 R24).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of mdm2 R24],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Mdm2_cyt_0 by AKT_p R25).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation at Ser166 and 186 R26).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous R27).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R27],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Nuclear import of Mdm2_cyto_S166S186p R28).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous R29).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R29],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous R30).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R30],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation by ATM_p at Ser395 R31).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation spontaneous R33).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation spontaneous R33],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation Ser395p-dependent R34).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation Ser395p-dependent R34],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Transcription of Wip1 gene R35).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of Wip1 gene R35],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation R36).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R36],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of Wip mRNA R37).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Wip mRNA R37],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of Wip mRNA R38).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Wip mRNA R38],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Transcription of PTEN gene R39).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of PTEN gene R39],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation R40).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R40],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of PTEN_mRNA R41).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of PTEN_mRNA R41],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of PTEN R42).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of PTEN R42],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phopshorylation of PIP2 by PI3K R43).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of PIP3 by PTENR44).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phopshorylation at PIP3 R45).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phopshorylation at PIP3 R45],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of AKT R46).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of AKT R46],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Transcription of p21 gene R47).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of p21 gene R47],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of p21 mRNA R48).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 mRNA R48],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of p21 mRNA R49).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of p21 mRNA R49],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Binding of Cyclin_E and p21 R50).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Cyclin_E and p21 R50],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of complex Cyclin_E:p21 R51).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of p21 R52).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of p21 R52],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of Rb1 at S567 R53).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Binding of Rb1 and E2F1 R54).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Rb1 and E2F1 R54],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Rb1 by Cyclin_E  R55).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of Rb1:E2F1 complex R56).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Synthesis R58).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis R58],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Synthesis induced by E2F1 R59).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis induced by E2F1 R59],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation R60).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R60],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation R61).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R61],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Transcription of Bax gene R62).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Transcription of Bax gene R62],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of Bax mRNA R63).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax mRNA R63],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Translation of Bax mRNA R64).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Translation of Bax mRNA R64],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of Bax:BclXL complex R65).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Bax:BclXL complex R65],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Binding of Bax and BclXL R66).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Bax and BclXL R66],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation R67).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation R67],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of BclXL:Bad complex R68).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of BclXL:Bad complex R68],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of Bax in Bax:BclXL complex R69).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Bad in BclXL:Bad complex R70).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Binding of BclXL and Bad_0 R71).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of BclXL and Bad_0 R71],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation R72).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation R72],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of BclXL:Bad complex R73).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of BclXL:Bad complex R73],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Bad_0 by AKT_p R74).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dissociation of Bad:14-3-3 complex R76).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Binding of Bad_p and 14-3-3 R78).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Binding of Bad_p and 14-3-3 R78],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Synthesis of proCaspase R79).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Synthesis of proCaspase R79],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of proCaspase R80).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of proCaspase R80],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Activation of caspases by active (free) Bax R81).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Activation of caspases by active (free) Bax R81],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Activation_autoactivation of caspases R82).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Activation_autoactivation of caspases R82],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Degradation of caspases R83).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Reactions[Degradation of caspases R83],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[DNA_double_strand_break]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[DNA_double_strand_break],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATM_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SIAH1_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIPK2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[HIPK2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_0phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_0phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_arrester]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_arrester],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_S46phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_S46phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_nuc_S166S186phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wip1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Wip1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_killer]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_killer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_cyt_0phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Mdm2_cyt_0phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_cyt_S166S186phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKT_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_nuc_S166S186p_S395p]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wip1 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Wip1 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PTEN mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PTEN mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PTEN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PTEN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p21_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p21_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p21_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p21_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin_E (free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin_E (free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin_E:p21_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin_E:p21_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb1_0_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb1_0:E2F1 complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BclXL_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax:BclXL_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_0_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_0_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_phosphorylated_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proCaspase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[proCaspase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Caspase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Caspase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATM_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[ATM_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SIAH1_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[SIAH1_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKT_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[AKT_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[PIP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Rb_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E2F1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[E2F1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BclXL_Bad_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_phosphorylated_Fourteen33_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[cytoplasm],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fourteen33_free]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Fourteen33_free],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[is_IR_switched_on]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[is_IR_switched_on],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[h2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[rep]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[rep],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DNA_DSB_due_to_IR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[DNA_DSB_due_to_IR],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[time_days]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Values[time_days],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Bifurcation between CycE &amp; p53Arrester" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Cyclin_E (free)]|[p53_arrester]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[p53_arrester],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=Hat2016 - Reponse of p53 System to irradiation in cell fate decision making,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin_E (free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000943.xml">
    <SBMLMap SBMLid="AKT_0" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="AKT_phosphorylated" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="AKT_tot" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="ATM_0" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="ATM_phosphorylated" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ATM_tot" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Activation_autoactivation_of_caspases_R82" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="Activation_of_caspases_by_active__free__Bax_R81" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="Bad_0__free" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Bad_phosphorylated_Fourteen33_complex" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="Bad_phosphorylated__free" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Bad_tot" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Bax_BclXL_complex" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Bax__free" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Bax_mRNA" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="BclXL_Bad_complex" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="BclXL__free" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="BclXL_tot" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="Binding_of_Bad_p_and_14_3_3_R78" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="Binding_of_Bax_and_BclXL_R66" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="Binding_of_BclXL_and_Bad_0_R71" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="Binding_of_Cyclin_E_and_p21_R50" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="Binding_of_Rb1_and_E2F1_R54" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="Caspase" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Cyclin_E__free" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Cyclin_E_p21_complex" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="DNA_DSB_RepairCplx_total" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="DNA_DSB_due_to_IR" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="DNA_DSB_max" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="DNA_DSB_per_IR_Gy" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="DNA_Repair_R2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="DNA_damage_R1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="DNA_double_strand_break" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Degradation_R36" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Degradation_R40" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="Degradation_R60" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="Degradation_R61" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="Degradation_R67" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="Degradation_Ser395p_dependent_R34" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Degradation_induced_by_Mdm2_nuc_S166S186p_and_SIAH1_R8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Degradation_of_Bax_in_Bax_BclXL_complex_R69" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="Degradation_of_Bax_mRNA_R63" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="Degradation_of_PTEN_R42" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="Degradation_of_caspases_R83" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="Degradation_of_p21_R52" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="Degradation_of_p21_mRNA_R48" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="Degradation_of_proCaspase_R80" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R29" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R30" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R33" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Degradation_spontanuous_and_induced_by_Mdm2_nuc_S166S186p__R12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Dephoshorylation_by_Wip1_R3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Dephosphorylation_R72" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="Dephosphorylation_and_dissociation_of_Bad_p_in_Bad_14_3_3_complex_R75" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="Dephosphorylation_at_Ser166_and_186_R26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Dephosphorylation_at_Ser46_by_Wip1_R17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Dephosphorylation_of_AKT_R46" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PIP3_by_PTENR44" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Rb1_at_S567_R53" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Dephosphorylation_of_SIAH1_p_R6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser15_and_Ser20_R21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser46_by_Wip1_R13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Dephosphorylation_spontaneous_of_p53_arrester_R11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Dissociation_of_Bad_14_3_3_complex_R76" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="Dissociation_of_Bax_BclXL_complex_R65" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="Dissociation_of_BclXL_Bad_complex_R68" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="Dissociation_of_BclXL_Bad_complex_R73" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="Dissociation_of_Rb1_E2F1_complex_R56" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="Dissociation_of_complex_Cyclin_E_p21_R51" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="E2F1" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="E2F1_tot" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Fourteen33_free" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="Fourteen33_tot" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Function_for_R12_1" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_R12_2" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_R12_3" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_R12_4" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_R1_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_R22_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_R22_2" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_R22_3" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_R22_4" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_R22_5" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_R2_1" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="Function_for_R43_1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_R45_1" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_R4_1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_R53_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_R59_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="Function_for_R82_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_R8_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_modifier1_modifier2_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_modifier_1" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Function_modifier_2" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_modifier_3" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_modifier_4" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Function_modifier_5" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_modifier_6" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_modifier_7" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_modifier_8" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_modifier_9" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_substrate_modifier_1" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Function_substrate_modifier_10" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_substrate_modifier_11" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_substrate_modifier_12" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_substrate_modifier_13" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Function_substrate_modifier_14" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_substrate_modifier_15" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_substrate_modifier_16" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_substrate_modifier_17" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_substrate_modifier_18" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_substrate_modifier_2" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_substrate_modifier_3" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_substrate_modifier_4" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_substrate_modifier_5" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_substrate_modifier_6" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_substrate_modifier_7" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_substrate_modifier_8" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_substrate_modifier_9" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="HIPK2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="IR_Gy" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="M1" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="M2" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="M3" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="Mdm2_cyt_0phosphorylated" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Mdm2_cyt_S166S186phosphorylated" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Mdm2_mRNA" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Mdm2_nuc_S166S186p_S395p" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Mdm2_nuc_S166S186phosphorylated" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Nuclear_import_of_Mdm2_cyto_S166S186p_R28" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="PI3K_tot" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="PIP_tot" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="PTEN" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PTEN_mRNA" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Phopshorylation_at_PIP3_R45" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="Phopshorylation_of_PIP2_by_PI3K_R43" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Phoshorylation_due_to_IR_R4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Phosphorylation_at_Ser46_by_HIPK2_R14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Phosphorylation_at_Ser46_by_HIPK2_R16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_R5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_at_Ser395_R31" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_0_by_AKT_p_R74" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_in_BclXL_Bad_complex_R70" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_in_BclXL_Bad_complex_and_complex_Dissociation_R77" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Phosphorylation_of_Rb1_by_Cyclin_E__R55" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="Phosphorylation_of_Rb1_in_Rb1_E2F1_complex_by_Cyclin_ER57" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="Rb1_0_E2F1_complex" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Rb1_0__free" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Rb_phosphorylated" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="Rb_tot" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="SIAH1_0" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="SIAH1_phosphorylated" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="SIAH1_tot" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="Synthesis_R58" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="Synthesis_induced_by_E2F1_R59" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="Synthesis_of_HIPK2_R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Synthesis_of_p53_0p_R9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Synthesis_of_proCaspase_R79" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="Transcription_Mdm2_gene_transcription_R22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Transcription_of_Bax_gene_R62" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="Transcription_of_PTEN_gene_R39" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="Transcription_of_Wip1_gene_R35" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Transcription_of_p21_gene_R47" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="Translation_of_Bax_mRNA_R64" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="Translation_of_PTEN_mRNA_R41" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Translation_of_Wip_mRNA_R37" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Translation_of_Wip_mRNA_R38" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Translation_of_mdm2_R24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Translation_of_p21_mRNA_R49" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="Wip1" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Wip1_mRNA" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="b1" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="b2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="b3" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="b4" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="b5" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="can_Caspase_make_DNA_DSB" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="cytoplasm" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="d10" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="d11" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="d12" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="d2" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="d3" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="d4" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="d5" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="d6" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="d7" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="d8" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="d9" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="g1" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="g10" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="g101" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="g11" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="g12" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="g13" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="g14" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="g15" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="g16" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="g17" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="g18" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="g19" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="g2" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="g20" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="g3" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="g4" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="g5" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="g6" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="g7" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="g8" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="g9" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="h1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="h2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="has_DNA_DSB_repair" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="i1" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="is_IR_switched_on" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="nuclear" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="p10" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="p11" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="p12" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="p21__free" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="p21_mRNA" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="p4" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="p5" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="p53_0phosphorylated" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="p53_S46phosphorylated" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="p53_arrester" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="p53_killer" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="p6" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="p7" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="p8" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="p9" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="proCaspase" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="q0_bax" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="q0_mdm2" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="q0_p21" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="q0_pten" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="q0_wip1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="q1_bax" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="q1_mdm2" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="q1_p21" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="q1_pten" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="q1_wip1" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="q2" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="rep" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="s1" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="s10" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="s2" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="s3" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="s4" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="s5" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="s6" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="s7" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="s8" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="s9" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="t2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="t3" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="t4" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="t5" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="time_days" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="tp2" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="u1" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="u2" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="u3" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="u5" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="u6" COPASIkey="ModelValue_67"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
