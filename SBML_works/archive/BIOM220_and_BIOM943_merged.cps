<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2023-12-11T17:02:18Z -->
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
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for re26" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cell*(Bax_hash*k13-Baxm*k_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Bax_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="Baxm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_261" name="k13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="k_13" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re27" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Bcl2*k14/v-Baxm_Bcl2*k_14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Baxm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="Baxm_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="k_14" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for re29" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Baxm*k15/v-Bax2*k_15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="Bax2" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_275" name="Baxm" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="k15" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="k_15" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re30" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bax2*Bax2*k17/v-Bax4*k_17
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Bax4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_278" name="k17" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="k_17" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re31" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax2*k16/v-Bax2_Bcl2*k_16
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="Bax2_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_283" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="k16" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="k_16" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re32" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax4*k18/v-Bax4_Bcl2*k_18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="Bax4_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_290" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="k18" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="k_18" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for re33" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bax4*M*k19/v-Bax4_M*k_19
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="Bax4_M" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_296" name="M" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="k19" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="k_19" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re35" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        M_hash*Smacm*k21/v-M_hash_Smacm*k_21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="M_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="M_hash_Smacm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="Smacm" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="k21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="k_21" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for re37" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        cell*(Smacr*k26-Smac*k_26)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="Smac" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="Smacr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_307" name="k26" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="k_26" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for re38" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        M_hash*CytoCm*k20/v-M_hash_CytoCm*k_20
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="CytoCm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="M_hash" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="M_hash_CytoCm" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_311" name="k20" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="k_20" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for re40" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        cell*(CytoCr*k22-CytoC*k_22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="CytoC" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_320" name="CytoCr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="k22" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="k_22" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R82" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a2*y33^2*y32
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="a2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="y33" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_323" name="y32" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function substrate modifier" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*modifier*substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="modifier" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_322" name="substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (h1*DNA_DSB_DUE_to_IR*is_IR_switched_on+h2*y33)*(DNA_DSB_max-y1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="h1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="DNA_DSB_DUE_to_IR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="is_IR_switched_on" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="h2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="y33" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="DNA_DSB_max" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="y1" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R12" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g101+g11*y12^h)*y5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="g101" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="g11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="y12" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="h" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="y5" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        y1*rep/(y1+DNA_DSB_RepairCplx_total)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="y1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="rep" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="DNA_DSB_RepairCplx_total" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R22" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s3*(q0_mdm2 + q1_mdm2*y6^h)/(q2+q0_mdm2 + q1_mdm2*y6^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="s3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="q0_mdm2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="q1_mdm2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="y6" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_346" name="h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="q2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p1*ATM_0*y1^h/(y1^h+M1^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="p1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="ATM_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="y1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="h" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="M1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R43" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p8*PIP2*PI3K_tot
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="p8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="PIP2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="PI3K_tot" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R45" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p12*AKT_0*y18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="p12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="AKT_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="y18" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R53" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d12*Rb_p/(M2+Rb_p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="d12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Rb_p" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_359" name="M2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R59" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s9*E2F1^2/(M3^2+E2F1^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="s9" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="E2F1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="M3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g7*y4*(y3+y12)^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="g7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="y4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_365" name="y3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="y12" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function modifier" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*modifier
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="modifier" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function modifier1 modifier2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*modifier1*modifier2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="modifier1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_373" name="modifier2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Merged_Apoptosis_Pathways" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2009-07-01T17:12:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>bertankorkmaz@std.iyte.edu.tr</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Korkmaz</vCard:Family>
            <vCard:Given>Bertan</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Izmir Institute of Technology</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>fkurtog@iu.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kurtoglu</vCard:Family>
            <vCard:Given>Furkan</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indiana University</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2023-12-11T11:58:45</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-25T12:42:31</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6964793701"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000220"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008624"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/hsa04210"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1059"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:modelVersion xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">4.0</celldesigner:modelVersion><celldesigner:modelDisplay xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" sizeX="2400" sizeY="2400" /><celldesigner:listOfIncludedSpecies xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:species id="s5" name="R">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>L_R</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s4" name="L">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>L_R</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s8" name="L">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>R_hash</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s6" name="aR">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>R_hash</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s12" name="L">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>flip_R_hash</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s10" name="aR">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>flip_R_hash</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s13" name="flip">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>flip_R_hash</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s16" name="L">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>R_hash_pC8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s17" name="aR">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>R_hash_pC8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s18" name="pC8">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>R_hash_pC8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s22" name="C6">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C6_pC8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s23" name="pC8">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C6_pC8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s27" name="BAR">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>BAR_C8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s26" name="C8">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>BAR_C8</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s30" name="pC3">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C8_pC3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s31" name="C8">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C8_pC3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s42" name="pC9">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>pC3_Apop</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s43" name="Apaf#">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>pC3_Apop</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s44" name="pC3">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>pC3_Apop</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s38" name="pC9">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Apop</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s39" name="Apaf#">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Apop</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s35" name="Bid">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C8_Bid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s36" name="C8">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C8_Bid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s49" name="pC6">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C3_pC6</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr16</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s48" name="C3">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>C3_pC6</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s52" name="C3">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>XIAP_C3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s53" name="XIAP">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>XIAP_C3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s57" name="PARP">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>PARP_C3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr19</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s58" name="C3">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>PARP_C3</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s64" name="pC9">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Apop_XIAP</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s65" name="Apaf#">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Apop_XIAP</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s67" name="XIAP">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Apop_XIAP</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s70" name="XIAP">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Smac_XIAP</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s71" name="Smac">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Smac_XIAP</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr21</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s74" name="Bcl2c">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bcl2c_tBid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr22</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s75" name="tBid">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bcl2c_tBid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s79" name="Bax">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax_tBid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr23</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s78" name="tBid">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax_tBid</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s85" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Baxm_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s87" name="Bcl2">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax2_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr26</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s90" name="Bcl2">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax4_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr26</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s94" name="M">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax4_M</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>UNKNOWN</celldesigner:class>
        <celldesigner:name>M</celldesigner:name>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s98" name="M#">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>M_hash_Smacm</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>UNKNOWN</celldesigner:class>
        <celldesigner:name>M#</celldesigner:name>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s99" name="Smacm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>M_hash_Smacm</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s104" name="M#">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>M_hash_CytoCm</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>UNKNOWN</celldesigner:class>
        <celldesigner:name>M#</celldesigner:name>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s109" name="Apaf">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>CytoC_Apaf</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr31</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s110" name="CytoC">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>CytoC_Apaf</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr30</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s84" name="Bcl2">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Baxm_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr26</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s103" name="CytoCm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>M_hash_CytoCm</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr28</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s130" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s131" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax4</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s132" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax2_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s133" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax4_Bcl2</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
  <celldesigner:species id="s134" name="Baxm">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body />
      </html>
    </celldesigner:notes>
    <celldesigner:annotation>
      <celldesigner:complexSpecies>Bax4_M</celldesigner:complexSpecies>
      <celldesigner:speciesIdentity>
        <celldesigner:class>PROTEIN</celldesigner:class>
        <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
      </celldesigner:speciesIdentity>
    </celldesigner:annotation>
  </celldesigner:species>
</celldesigner:listOfIncludedSpecies><celldesigner:listOfCompartmentAliases xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:compartmentAlias compartment="mitochondrion" id="ca1">
    <celldesigner:class>SQUARE</celldesigner:class>
    <celldesigner:bounds h="1197.0" w="639.0" x="1323.0" y="768.0" />
    <celldesigner:namePoint x="1788.5" y="1007.5" />
    <celldesigner:doubleLine innerWidth="1.0" outerWidth="2.0" thickness="3.0" />
    <celldesigner:paint color="ff010101" scheme="Color" />
  </celldesigner:compartmentAlias>
</celldesigner:listOfCompartmentAliases><celldesigner:listOfComplexSpeciesAliases xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:complexSpeciesAlias id="csa1" species="L_R">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="140.0" w="106.0" x="539.0" y="95.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="140.0" width="106.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa2" species="R_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="132.0" w="100.0" x="727.0" y="97.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="132.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa3" species="flip_R_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="174.0" w="100.0" x="1053.0" y="79.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="174.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa4" species="R_hash_pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="176.0" w="98.0" x="614.0" y="331.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="176.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa5" species="C6_pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="353.0" y="471.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa6" species="BAR_C8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="116.0" w="92.0" x="731.0" y="649.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="116.0" width="92.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa7" species="C8_pC3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="114.0" w="98.0" x="393.0" y="795.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="114.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa8" species="pC3_Apop">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="166.0" w="98.0" x="620.0" y="935.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="166.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa9" species="Apop">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1017.0" y="821.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa10" species="C8_Bid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="118.0" w="98.0" x="1041.0" y="413.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="118.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa11" species="C3_pC6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="45.0" y="1184.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa12" species="XIAP_C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="673.0" y="1309.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa13" species="PARP_C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="359.0" y="1421.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa14" species="Apop_XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="158.0" w="106.0" x="896.0" y="1009.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="158.0" width="106.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa15" species="Smac_XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="735.0" y="1707.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa16" species="Bcl2c_tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1265.0" y="553.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa17" species="Bax_tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1160.0" y="850.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa18" species="Baxm_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1789.0" y="791.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="466.0" y="23.0" />
      <celldesigner:boxSize height="120.0" width="100.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa19" species="Bax2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="102.0" w="98.0" x="1479.0" y="999.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="156.0" y="231.0" />
      <celldesigner:boxSize height="102.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa20" species="Bax2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="102.0" w="98.0" x="1373.0" y="1103.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="335.0" />
      <celldesigner:boxSize height="102.0" width="98.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa21" species="Bax4">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="156.0" x="1451.0" y="1225.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="128.0" y="457.0" />
      <celldesigner:boxSize height="96.0" width="156.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa22" species="Bax2_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="140.0" w="102.0" x="1797.0" y="966.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="474.0" y="198.0" />
      <celldesigner:boxSize height="140.0" width="102.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa23" species="Bax4_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="142.0" w="154.0" x="1753.0" y="1202.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="430.0" y="434.0" />
      <celldesigner:boxSize height="142.0" width="154.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa24" species="Bax4_M">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="122.0" w="150.0" x="1603.0" y="1463.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="280.0" y="695.0" />
      <celldesigner:boxSize height="122.0" width="150.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa25" species="M_hash_Smacm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="90.0" x="1565.0" y="1841.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="242.0" y="1073.0" />
      <celldesigner:boxSize height="96.0" width="90.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa26" species="M_hash_CytoCm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="92.0" x="1337.0" y="1554.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="14.0" y="786.0" />
      <celldesigner:boxSize height="96.0" width="92.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa27" species="CytoC_Apaf">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="112.0" w="86.0" x="1025.0" y="1440.0" />
    <celldesigner:view state="usual" />
    <celldesigner:backupSize h="0.0" w="0.0" />
    <celldesigner:backupView state="none" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="112.0" width="86.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="2.0" />
      <celldesigner:paint color="fff7f7f7" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
</celldesigner:listOfComplexSpeciesAliases><celldesigner:listOfSpeciesAliases xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:speciesAlias id="sa1" species="L">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="346.0" y="109.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa2" species="R">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="350.0" y="177.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="50.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffffffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa3" species="flip">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="915.0" y="79.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa4" species="pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="475.0" y="334.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa5" species="C8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="547.0" y="621.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa6" species="C6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="213.0" y="335.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa7" species="BAR">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="625.0" y="753.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa8" species="pC3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="621.0" y="857.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa9" species="C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="545.0" y="1215.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa10" species="Bid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="827.0" y="455.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa11" species="tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1053.0" y="695.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa12" species="pC6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="399.0" y="1137.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa13" species="XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="829.0" y="1217.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa14" species="C3_Ub">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="687.0" y="1507.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa15" species="PARP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="265.0" y="1335.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa16" species="CPARP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="547.0" y="1463.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa17" species="Smac">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="967.0" y="1828.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa18" species="Bcl2c">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1159.0" y="555.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa19" species="Bax">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="996.0" y="768.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa20" species="Bax_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1489.0" y="695.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa21" species="Baxm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1489.0" y="862.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="166.0" y="94.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa22" species="Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1603.0" y="923.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="280.0" y="155.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa1" id="sa23" species="s5">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="549.75" y="159.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.75" y="64.0" />
      <celldesigner:boxSize height="50.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffffffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa1" id="sa24" species="s4">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="549.75" y="109.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.75" y="14.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa2" id="sa25" species="s8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="108.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="11.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa2" id="sa26" species="s6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="736.0" y="156.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0" />
      <celldesigner:boxSize height="50.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffffffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa27" species="s12">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1060.0" y="85.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa28" species="s10">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="1062.0" y="133.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="54.0" />
      <celldesigner:boxSize height="50.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffffffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa29" species="s13">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1064.0" y="189.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="110.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa30" species="s16">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="621.0" y="342.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="11.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa31" species="s17">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="623.0" y="390.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0" />
      <celldesigner:boxSize height="50.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffffffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa32" species="s18">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="622.0" y="445.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="8.0" y="114.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa5" id="sa33" species="s22">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="360.0" y="527.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="56.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa5" id="sa34" species="s23">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="364.0" y="481.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="10.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa6" id="sa35" species="s27">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="655.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa6" id="sa36" species="s26">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="701.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="52.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa7" id="sa37" species="s30">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="398.0" y="845.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="50.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa7" id="sa38" species="s31">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="398.0" y="801.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa39" species="s42">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="626.0" y="997.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="62.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa40" species="s43">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="626.0" y="1043.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="108.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa41" species="s44">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="624.0" y="947.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="4.0" y="12.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa9" id="sa42" species="s38">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1023.0" y="837.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="16.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa9" id="sa43" species="s39">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1023.0" y="883.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="62.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa10" id="sa44" species="s35">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1048.0" y="423.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="10.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa10" id="sa45" species="s36">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1050.0" y="469.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="56.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa11" id="sa46" species="s49">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="52.0" y="1196.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="12.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa11" id="sa47" species="s48">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="54.0" y="1240.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="56.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa12" id="sa48" species="s52">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="680.0" y="1323.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="14.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa12" id="sa49" species="s53">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="678.0" y="1367.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="58.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa13" id="sa50" species="s57">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="366.0" y="1429.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="8.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa13" id="sa51" species="s58">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="366.0" y="1479.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="58.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa52" species="s64">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1058.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="49.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa53" species="s65">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1102.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="93.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa54" species="s67">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1013.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="4.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa15" id="sa55" species="s70">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="744.0" y="1717.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="10.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa15" id="sa56" species="s71">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="746.0" y="1763.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="56.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa16" id="sa57" species="s74">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1274.0" y="562.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="9.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa16" id="sa58" species="s75">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1274.0" y="612.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa17" id="sa59" species="s79">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1169.0" y="855.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa17" id="sa60" species="s78">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1170.0" y="903.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.0" y="53.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa18" id="sa61" species="s84">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1796.0" y="800.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="9.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa18" id="sa62" species="s85">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1796.0" y="844.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="53.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa19" id="sa63" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1480.0" y="1005.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="1.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa19" id="sa64" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1486.0" y="1029.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="30.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa65" species="Baxm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1392.0" y="934.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="69.0" y="166.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa20" id="sa66" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1374.0" y="1109.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="1.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa20" id="sa67" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1386.0" y="1135.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="13.0" y="32.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa68" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1460.0" y="1230.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa69" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1472.0" y="1256.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="21.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa70" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1518.0" y="1256.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="67.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa71" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1506.0" y="1230.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="55.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa72" species="s132">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1802.0" y="971.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa73" species="s132">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1814.0" y="997.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="17.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa74" species="s87">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1806.0" y="1042.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="76.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa75" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1807.0" y="1207.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="54.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa76" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1819.0" y="1233.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="66.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa77" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1773.0" y="1233.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="20.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa78" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1761.0" y="1207.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="8.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa79" species="s90">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1792.0" y="1278.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="39.0" y="76.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa80" species="M">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1438.0" y="1399.5" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="115.0" y="631.5" />
      <celldesigner:boxSize height="25.0" width="70.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="7fcccccc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa81" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1665.0" y="1494.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="62.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa82" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1653.0" y="1468.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa83" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1619.0" y="1494.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="16.0" y="31.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa84" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1607.0" y="1468.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="4.0" y="5.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa85" species="s94">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1646.0" y="1539.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="43.0" y="76.0" />
      <celldesigner:boxSize height="25.0" width="70.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="7fcccccc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa86" species="M_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1643.0" y="1733.5" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="320.0" y="965.5" />
      <celldesigner:boxSize height="25.0" width="70.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="7fcccccc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa87" species="Smacm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1792.0" y="1774.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="469.0" y="1006.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa25" id="sa88" species="s98">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1572.0" y="1891.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="50.0" />
      <celldesigner:boxSize height="25.0" width="70.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="7fcccccc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa25" id="sa89" species="s99">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1570.0" y="1849.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="8.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa90" species="Smacr">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1373.0" y="1832.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="1064.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa91" species="CytoCm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1488.0" y="1485.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="165.0" y="717.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa26" id="sa92" species="s103">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1344.0" y="1560.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa26" id="sa94" species="s104">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1350.0" y="1604.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="13.0" y="50.0" />
      <celldesigner:boxSize height="25.0" width="70.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="7fcccccc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa95" species="CytoCr">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1374.0" y="1705.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="51.0" y="937.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa96" species="CytoC">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="960.0" y="1705.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa97" species="Apaf">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1079.0" y="1588.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa27" id="sa98" species="s109">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1028.0" y="1446.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="6.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa27" id="sa99" species="s110">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1028.0" y="1490.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="50.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa100" species="Apaf_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="958.0" y="1308.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="93.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa101" species="pC9">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1165.0" y="1308.0" />
    <celldesigner:view state="usual" />
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="40.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="ffccffcc" scheme="Color" />
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0" />
      <celldesigner:boxSize height="60.0" width="80.0" />
      <celldesigner:singleLine width="1.0" />
      <celldesigner:paint color="3fff0000" scheme="Color" />
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
</celldesigner:listOfSpeciesAliases><celldesigner:listOfGroups xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" /><celldesigner:listOfProteins xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:protein id="pr1" name="L" type="GENERIC" />
  <celldesigner:protein id="pr2" name="R" type="RECEPTOR" />
  <celldesigner:protein id="pr5" name="flip" type="GENERIC" />
  <celldesigner:protein id="pr6" name="pC8" type="GENERIC" />
  <celldesigner:protein id="pr7" name="C8" type="GENERIC" />
  <celldesigner:protein id="pr8" name="C6" type="GENERIC" />
  <celldesigner:protein id="pr9" name="BAR" type="GENERIC" />
  <celldesigner:protein id="pr10" name="pC3" type="GENERIC" />
  <celldesigner:protein id="pr11" name="C3" type="GENERIC" />
  <celldesigner:protein id="pr12" name="Bid" type="GENERIC" />
  <celldesigner:protein id="pr13" name="tBid" type="GENERIC" />
  <celldesigner:protein id="pr16" name="pC6" type="GENERIC" />
  <celldesigner:protein id="pr17" name="XIAP" type="GENERIC" />
  <celldesigner:protein id="pr18" name="C3_Ub" type="GENERIC" />
  <celldesigner:protein id="pr19" name="PARP" type="GENERIC" />
  <celldesigner:protein id="pr20" name="CPARP" type="GENERIC" />
  <celldesigner:protein id="pr21" name="Smac" type="GENERIC" />
  <celldesigner:protein id="pr22" name="Bcl2c" type="GENERIC" />
  <celldesigner:protein id="pr23" name="Bax" type="GENERIC" />
  <celldesigner:protein id="pr24" name="Bax#" type="GENERIC" />
  <celldesigner:protein id="pr25" name="Baxm" type="GENERIC" />
  <celldesigner:protein id="pr26" name="Bcl2" type="GENERIC" />
  <celldesigner:protein id="pr4" name="aR" type="RECEPTOR" />
  <celldesigner:protein id="pr14" name="pC9" type="GENERIC" />
  <celldesigner:protein id="pr15" name="Apaf#" type="GENERIC" />
  <celldesigner:protein id="pr3" name="Smacm" type="GENERIC" />
  <celldesigner:protein id="pr27" name="Smacr" type="GENERIC" />
  <celldesigner:protein id="pr28" name="CytoCm" type="GENERIC" />
  <celldesigner:protein id="pr29" name="CytoCr" type="GENERIC" />
  <celldesigner:protein id="pr30" name="CytoC" type="GENERIC" />
  <celldesigner:protein id="pr31" name="Apaf" type="GENERIC" />
</celldesigner:listOfProteins><celldesigner:listOfGenes xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" /><celldesigner:listOfRNAs xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" /><celldesigner:listOfAntisenseRNAs xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" /><celldesigner:listOfLayers xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" /><celldesigner:listOfBlockDiagrams xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" />
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="mitochondrion" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005739" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:name xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">mitochondrion</celldesigner:name>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="L" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3803" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P50591" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
      <p>
        <b>TRAIL</b>
                : L = 3000 correspond to 50 ng/ml SuperKiller TRAIL            <br />
                for experiments under saturating conditions use L = 60000            </p>
      </body>
    </html>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2540" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
      <p>
        <b>TRAIL receptor</b>
                : for experiments without siRNA R = 200            <br /></p>
      </body>
    </html>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="flip" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omim/603599" />
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2438" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15519" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="proC8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_4998.1" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q14790" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="casp8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_4185" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="casp6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="BAR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="proC3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42574" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="casp3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Bid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omim/601997" />
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3224" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55957" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="tBid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_385" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55957" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="proC6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55212" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr16</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5246" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P98170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Ub C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42574" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62988" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        ubiquitinylated caspase 3</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr18</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PARP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P09874" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        EC substrate</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr19</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="cPARP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P09874" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        cleaved PARP</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr20</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Smac" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5375" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr21</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="cytosolic Bcl-2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3598" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr22</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Bax" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr23</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Bax#" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        activated Bax</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr24</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Bcl-2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        mitochondrial Bcl-2</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr26</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="L:R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P50591" />
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5556" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        TRAIL-receptor complex</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>L:R</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="R#" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        activated receptor</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>R#</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="flip:R#" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>flip:R#</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="R#:pC8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>R#:pC8</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="C6:pC8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>C6:pC8</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="BAR:C8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>BAR:C8</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="C8:pC3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>C8:pC3</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="pC3:Apop" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>pC3:Apop</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Apop" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14727" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55211" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043293" />
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5647" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        apoptosome</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Apop</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="C8:Bid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>C8:Bid</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="C3:pC6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>C3:pC6</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="XIAP:C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>XIAP:C3</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="PARP:C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>PARP:C3</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Apop:XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Apop:XIAP</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Smac:XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Smac:XIAP</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Bcl2c:tBid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bcl2c:tBid</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Bax:tBid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax:tBid</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Baxm:Bcl2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Baxm:Bcl2</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Bax4" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        Bax tetramer</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax4</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Bax2:Bcl2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax2:Bcl2</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Bax4:Bcl2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax4:Bcl2</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="M" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        binding sites for activated Bax on the inner mitochondrial membrane</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>UNKNOWN</celldesigner:class>
  <celldesigner:name>M</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Bax4:M" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax4:M</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="M#" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        opened inner mitochondrial membrane pore</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>UNKNOWN</celldesigner:class>
  <celldesigner:name>M#</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Smac_m" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5499" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="M#:Smac_m" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>M#:Smacm</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Smac released" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5375" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        Smac released into the mitochondrial intermembrane space</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr27</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="CytoC_m" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_14114" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr28</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="M#:CytoC_m" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>M#:CytoCm</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="CytoC released" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3942" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        cytochrom C  released into the mitochondrial intermembrane space</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr29</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="CytoC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr30</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="Apaf" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14727" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr31</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="CytoC:Apaf" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>CytoC:Apaf</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Apaf#" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="proC9" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55211" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Baxm" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>PROTEIN</celldesigner:class>
  <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Bax2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        dimeric Bax</p>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>Bax2</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="Bax_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Caspase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="proCaspase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="Bad_phosphorylated_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Fourteen33_free" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="Bax:BclXL_complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="BclXL_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="Bad_0_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="Cyclin_E (free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="Cyclin_E:p21_complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="p21_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="E2F1" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[E2F1_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="Rb1_0:E2F1 complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="Rb1_0_(free)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="HIPK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="Mdm2_nuc_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="SIAH1_0" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="Bax_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="p21_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="PTEN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="Wip1 mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="PTEN mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="Mdm2_nuc_S166S186p_S395p" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="p53_arrester" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="p53_S46phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="p53_killer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="Mdm2 mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="Mdm2_cyt_0phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="Mdm2_cyt_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="p53_0phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="ATM_phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="Wip1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="Bad_phosphorylated_Fourteen33_complex" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="AKT_phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="PIP3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="Rb_phosphorylated" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="SIAH1_phosphorylated" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="BclXL_Bad_complex" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_96" name="DNA_double_strand_break" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="AKT_0" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_98" name="PI3K_tot" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="PIP2" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_100" name="ATM_0" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[ATM_tot],Reference=Concentration>-&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="AKT_tot" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_102" name="ATM_tot" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="Bad_tot" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_104" name="BclXL_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="E2F1_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="Fourteen33_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="PIP_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="Rb_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="SIAH1_tot" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_110" name="p_Apoptosis_A" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Comment>
          probability of Apoptosis via Extrinsic
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop],Reference=Concentration>/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[Apop*],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="p_Apoptosis_C" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Comment>
          probability of Apoptosis via Intrinsic pathway
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Caspase],Reference=Concentration>/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[Caspase*],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kc3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kc6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kc8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kc9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kc10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kc12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="k_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="k_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kc19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="k_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kc21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="k_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="k23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="k_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kc23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="k_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="k25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="k27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="k_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="k_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kc7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="pC3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>)/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="degraded C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="cPARP fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>/(&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="total Caspase 3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>+&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="free C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="a2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="b1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="b2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="b3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="b4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="b5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="can_Caspase_make_DNA_DSB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="d10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="d11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="d4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="d5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="d6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="d7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="d8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="d9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="DNA_DSB_due_to_IR" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[IR_Gy],Reference=Value>*&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_per_IR_Gy],Reference=Value>/&lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[tp2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="DNA_DSB_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="d12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="d2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="d3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="DNA_DSB_per_IR_Gy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="DNA_DSB_RepairCplx_total" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="g14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="g15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="g16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="g17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="g18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="g19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="g2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="g20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="g10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="g1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="g101" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="g11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="g12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="g13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="g3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="g4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="IR_Gy" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="p10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="p11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="p12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="p2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="p3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="p4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="p5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="g5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="g6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_126">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="g7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_127">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="g8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_128">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="g9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_129">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_130">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="h1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_131">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="h2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_132">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[can_Caspase_make_DNA_DSB],Reference=Value>*1e-13
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_133" name="has_DNA_DSB_repair" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_133">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_134" name="i1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_134">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="is_IR_switched_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_135">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="M1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_136">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="M2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_137">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="M3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_138">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_139">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="p6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_140">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="p7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_141">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="q1_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_142">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="s1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_143">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="s10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_144">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="s2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_145">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="s3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_146">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="s4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_147">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="s5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_148">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="s6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_149">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="p8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_150">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_151" name="p9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_151">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_152" name="q0_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_152">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="q0_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_153">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="q0_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_154">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_155" name="q0_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_155">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="q0_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_156">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="q1_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_157">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="q1_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_158">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="q1_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_159">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="q1_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_160">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="q2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_161">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="rep" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_162">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[has_DNA_DSB_repair],Reference=Value>*1e-3
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="s7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_163">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="s8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_164">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="t5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_165">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="time_days" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_166">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time>/86400
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="tp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_167">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="u1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_168">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="u2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_169">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="u3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_170">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="u5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_171">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="u6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_172">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="s9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_173">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_174">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="t2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_175">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="t3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_176">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="t4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="t_Bax_mRNA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_178">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="Caspase*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="Apop*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045569" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa1" species="L">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa2" species="R">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa1" species="L_R">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.24184235262521836,0.45404189606552947</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7498" name="k1" value="4e-07"/>
          <Constant key="Parameter_7496" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="re2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa1" species="L_R">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7502" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="re3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa3" species="flip">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa3" species="flip_R_hash">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.021030002804000247,0.551359940181325</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7497" name="k1" value="1e-06"/>
          <Constant key="Parameter_7500" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="re4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_961" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa4" species="pC8">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa4" species="R_hash_pC8">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.32840302000088073,0.26279305929621977</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7501" name="k1" value="1e-06"/>
          <Constant key="Parameter_8513" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="re5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_961" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa4" species="R_hash_pC8">
    <celldesigner:linkAnchor position="ESE" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="NNE" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="SSE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">6.94258373205718,5.8564593301434655</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7503" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="re6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa6" species="C6">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa4" species="pC8">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa5" species="C6_pC8">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5739051489343293,-0.0024209934719618964</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7504" name="k1" value="3e-08"/>
          <Constant key="Parameter_8514" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">TRUNCATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa5" species="C6_pC8">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa6" species="C6">
    <celldesigner:linkAnchor position="SSE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="1" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="1" tShapeIndex="0">0.1983081832126894,-0.38512128346031865 -1.0277008310249305,-1.2673130193905848</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8515" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="re8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa7" species="BAR">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa6" species="BAR_C8">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.3708609271523198,0.2582781456953589</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8511" name="k1" value="1e-06"/>
          <Constant key="Parameter_8512" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="re9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa8" species="pC3">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="SW" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa7" species="C8_pC3">
    <celldesigner:linkAnchor position="ESE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.0674840470361584,0.5570494040213523</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7507" name="k1" value="1e-07"/>
          <Constant key="Parameter_7505" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="re10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.4.22.61" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa7" species="C8_pC3">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.8059224343118494,0.20378494422924298</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7512" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="re11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="NE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa10" species="Bid">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa10" species="C8_Bid">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5234120183536923,0.4740449997235867</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7508" name="k1" value="1e-07"/>
          <Constant key="Parameter_7620" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="re12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.4.22.61" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa10" species="C8_Bid">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="ENE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.6488968191891522,0.0018820883848253978</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7510" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="re13" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa8" species="pC3">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa8" species="pC3_Apop">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4972559163841017,0.014262243506833805</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7509" name="k1" value="5e-09"/>
          <Constant key="Parameter_7623" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="re14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa8" species="pC3_Apop">
    <celldesigner:linkAnchor position="ESE" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="ENE" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="WSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5006545726575657,0.49008789975687295</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7622" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="re15" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="WSW" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa12" species="pC6">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa11" species="C3_pC6">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.07876764304143968,0.3173470936409184</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7506" name="k1" value="1e-06"/>
          <Constant key="Parameter_7621" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="re16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa11" species="C3_pC6">
    <celldesigner:linkAnchor position="ENE" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="NW" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa6" species="C6">
    <celldesigner:linkAnchor position="SSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.28430404859185443,0.02968997588602229</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7619" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="re17" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa12" species="XIAP_C3">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4894653255690853,-0.007305452620432362</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8165" name="k1" value="2e-06"/>
          <Constant key="Parameter_8163" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="re18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa12" species="XIAP_C3">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa14" species="C3_Ub">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="1" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="1" tShapeIndex="0">0.3341165377851305,0.4640669986012984 0.6113748092897122,-0.003051364638047893</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7513" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="re19" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa15" species="PARP">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="SSW" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa13" species="PARP_C3">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.274371859296483,0.26130653266331905</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7529" name="k1" value="1e-06"/>
          <Constant key="Parameter_7515" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="re20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa13" species="PARP_C3">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa16" species="CPARP">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5151336656094241,-0.003942002718622106</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7523" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="re21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="NE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa14" species="Apop_XIAP">
    <celldesigner:linkAnchor position="SE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">27.312133072407136,-65.13502935420763</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7524" name="k1" value="2e-06"/>
          <Constant key="Parameter_8162" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="re22" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="SE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa17" species="Smac">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa15" species="Smac_XIAP">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5387742640442239,0.3732243861678852</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7511" name="k1" value="7e-06"/>
          <Constant key="Parameter_7522" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="re23" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="NE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa18" species="Bcl2c">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa16" species="Bcl2c_tBid">
    <celldesigner:linkAnchor position="WSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.2551805802249838,0.35563449773041356</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8316" name="k1" value="1e-06"/>
          <Constant key="Parameter_7514" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="re24" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="SE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa19" species="Bax">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa17" species="Bax_tBid">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.33134920634920206,0.48814611314611156</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8319" name="k1" value="1e-07"/>
          <Constant key="Parameter_7519" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="re25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa17" species="Bax_tBid">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa20" species="Bax_hash">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4495412844036686,0.5504587155963316</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8164" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="re26" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">TRANSPORT</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa20" species="Bax_hash">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7518" name="k13" value="0.01"/>
          <Constant key="Parameter_7521" name="k_13" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="re27" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa18" species="Baxm_Bcl2">
    <celldesigner:linkAnchor position="WSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.14364640883977842,0.31491712707181774</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7520" name="k14" value="1e-06"/>
          <Constant key="Parameter_8161" name="k_14" value="0.001"/>
          <Constant key="Parameter_7525" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="re29" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa65" species="Baxm">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.005917159763312085,0.42603550295858206</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7517" name="k15" value="1e-06"/>
          <Constant key="Parameter_7516" name="k_15" value="0.001"/>
          <Constant key="Parameter_8607" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="re30" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa20" species="Bax2">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.004380422879288304,0.46432482520427776</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7528" name="k17" value="1e-06"/>
          <Constant key="Parameter_7526" name="k_17" value="0.001"/>
          <Constant key="Parameter_8455" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="re31" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="SSW" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="ENE" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa22" species="Bax2_Bcl2">
    <celldesigner:linkAnchor position="WNW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.37578915108795674,0.1912963530493368</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8606" name="k16" value="1e-06"/>
          <Constant key="Parameter_8453" name="k_16" value="0.001"/>
          <Constant key="Parameter_8608" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="re32" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="SSE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa23" species="Bax4_Bcl2">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5481727574750828,0.45182724252491724</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7527" name="k18" value="1e-06"/>
          <Constant key="Parameter_8452" name="k_18" value="0.001"/>
          <Constant key="Parameter_8610" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="re33" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="SSE" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa80" species="M">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa24" species="Bax4_M">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.12172462392498495,0.39474214053556267</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8609" name="k19" value="1e-06"/>
          <Constant key="Parameter_8454" name="k_19" value="0.001"/>
          <Constant key="Parameter_8318" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="re34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa24" species="Bax4_M">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8320" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="re35" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa87" species="Smacm">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa25" species="M_hash_Smacm">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.513208890295024,0.4710907221387357</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8451" name="k21" value="2e-06"/>
          <Constant key="Parameter_8317" name="k_21" value="0.001"/>
          <Constant key="Parameter_7530" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="re36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa25" species="M_hash_Smacm">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa90" species="Smacr">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5796917261381083,0.4082184638446229</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7533" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="re37" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa90" species="Smacr">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa17" species="Smac">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7534" name="k26" value="0.01"/>
          <Constant key="Parameter_7532" name="k_26" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="re38" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa91" species="CytoCm">
    <celldesigner:linkAnchor position="S" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa26" species="M_hash_CytoCm">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.41064754015557536,0.33356904737852044</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7531" name="k20" value="2e-06"/>
          <Constant key="Parameter_7536" name="k_20" value="0.001"/>
          <Constant key="Parameter_7538" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="re39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa26" species="M_hash_CytoCm">
    <celldesigner:linkAnchor position="SE" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa95" species="CytoCr">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.2201376449514445,0.3327990949373043</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7539" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="re40" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa95" species="CytoCr">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7537" name="k22" value="0.01"/>
          <Constant key="Parameter_7535" name="k_22" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="re41" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="N" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa97" species="Apaf">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa27" species="CytoC_Apaf">
    <celldesigner:linkAnchor position="SSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.13954392329619125,0.43962166364343247</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7542" name="k1" value="5e-07"/>
          <Constant key="Parameter_7541" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_51"/>
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="re42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa27" species="CytoC_Apaf">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="NNW" />
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa100" species="Apaf_hash">
    <celldesigner:linkAnchor position="SSW" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5323814380418144,0.7256866030450926</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7540" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="re43" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa100" species="Apaf_hash">
    <celldesigner:linkAnchor position="E" />
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa101" species="pC9">
    <celldesigner:linkAnchor position="W" />
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="SSE" />
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown" />
    <celldesigner:lineDirection arm="1" index="0" value="unknown" />
    <celldesigner:lineDirection arm="2" index="0" value="unknown" />
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.45410628019323607,0.0</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0" />
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7543" name="k1" value="5e-08"/>
          <Constant key="Parameter_7544" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_54"/>
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Activation of caspases by active (free) Bax R81" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7547" name="k" value="3e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Activation_autoactivation of caspases R82" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7545" name="a2" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Binding of Bad_p and 14-3-3 R78" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7546" name="k" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Binding of Bax and BclXL R66" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7548" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_58"/>
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Binding of BclXL and Bad_0 R71" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7549" name="k1" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_64"/>
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Binding of Cyclin_E and p21 R50" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7552" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_68"/>
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Binding of Rb1 and E2F1 R54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7550" name="k" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_74" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7551" name="g7" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Degradation of Bax in Bax:BclXL complex R69" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7554" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Degradation R67" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7553" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Dephoshorylation by Wip1 R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7555" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Dephosphorylation R72" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7557" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Phopshorylation at PIP3 R45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8472" name="p12" value="1e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="Phoshorylation due to IR R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_100" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8473" name="p1" value="0.0003"/>
          <Constant key="Parameter_8471" name="h" value="2"/>
          <Constant key="Parameter_8475" name="M1" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="Phosphorylation at Ser46 by HIPK2 R14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7556" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Phosphorylation at Ser46 by HIPK2 R16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8474" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Phosphorylation by ATM_p at Ser395 R31" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8529" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Degradation of Bax mRNA R63" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8526" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Degradation of caspases R83" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8530" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Degradation of p21 mRNA R48" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8528" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="Degradation of p21 R52" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8543" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="Degradation of proCaspase R80" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8544" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="Degradation of PTEN R42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8545" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Degradation R36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8541" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="Degradation R40" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8527" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="Degradation R60" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="Degradation R61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7479" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Degradation Ser395p-dependent R34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7478" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7473" name="g101" value="1e-05"/>
          <Constant key="Parameter_4867" name="g11" value="1e-13"/>
          <Constant key="Parameter_7476" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7474" name="g101" value="1e-05"/>
          <Constant key="Parameter_7477" name="g11" value="1e-13"/>
          <Constant key="Parameter_4863" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7480" name="g101" value="1e-05"/>
          <Constant key="Parameter_7462" name="g11" value="1e-13"/>
          <Constant key="Parameter_7459" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="Degradation spontaneous R23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7458" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="Degradation spontaneous R27" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7465" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="Degradation spontaneous R29" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7461" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="Degradation spontaneous R30" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7463" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="Degradation spontaneous R33" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7464" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7468" name="g101" value="1e-05"/>
          <Constant key="Parameter_7471" name="g11" value="1e-11"/>
          <Constant key="Parameter_7472" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7466" name="k" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="Dephosphorylation at Ser166 and 186 R26" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7470" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="Dephosphorylation at Ser46 by Wip1 R17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7467" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="Dephosphorylation of AKT R46" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7469" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="Dephosphorylation of PIP3 by PTENR44" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7475" name="k" value="3e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="Dephosphorylation of Rb1 at S567 R53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4865" name="d12" value="10000"/>
          <Constant key="Parameter_4864" name="M2" value="100000"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="Dephosphorylation of Ser15 and Ser20 R21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7562" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7559" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="Dephosphorylation of Ser46 by Wip1 R13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8542" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="Dephosphorylation of SIAH1_p R6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7558" name="k" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="Dephosphorylation spontaneous of p53_arrester R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8851" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="Dissociation of Bad:14-3-3 complex R76" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7561" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="Dissociation of Bax:BclXL complex R65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7560" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="Dissociation of BclXL:Bad complex R68" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8848" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="Dissociation of BclXL:Bad complex R73" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8807" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="Dissociation of complex Cyclin_E:p21 R51" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8846" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="Dissociation of Rb1:E2F1 complex R56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8845" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="DNA damage R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8795" name="h1" value="1e-06"/>
          <Constant key="Parameter_8792" name="DNA_DSB_DUE_to_IR" value="0"/>
          <Constant key="Parameter_8793" name="is_IR_switched_on" value="1"/>
          <Constant key="Parameter_8847" name="h2" value="1e-13"/>
          <Constant key="Parameter_8796" name="DNA_DSB_max" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="DNA Repair R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8791" name="rep" value="0.001"/>
          <Constant key="Parameter_8794" name="DNA_DSB_RepairCplx_total" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="Nuclear import of Mdm2_cyto_S166S186p R28" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8797" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="Phopshorylation of PIP2 by PI3K R43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8806" name="p8" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="Phosphorylation by ATM_p on Ser15 and Ser20 R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8810" name="k" value="3e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="Phosphorylation by ATM_p on Ser15 and Ser20 R18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8803" name="k" value="3e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="Synthesis of proCaspase R79" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8799" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="Translation of mdm2 R24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8804" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="Translation of p21 mRNA R49" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8802" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="Translation of PTEN_mRNA R41" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8801" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="Translation of Wip mRNA R37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8798" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="Translation of Wip mRNA R38" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8805" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="Phosphorylation by ATM_p R5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8800" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7493" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="Phosphorylation of Bad in BclXL:Bad complex R70" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7490" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="Phosphorylation of Bad_0 by AKT_p R74" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7489" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="Phosphorylation of Mdm2_cyt_0 by AKT_p R25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7485" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="Phosphorylation of Rb1 by Cyclin_E  R55" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7495" name="k" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7492" name="k" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="Synthesis induced by E2F1 R59" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7494" name="s9" value="30"/>
          <Constant key="Parameter_7487" name="M3" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="Synthesis of HIPK2 R7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7483" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="Synthesis of p53_0p R9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7484" name="v" value="300"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="Synthesis R58" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7488" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="Transcription Mdm2 gene transcription R22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7482" name="s3" value="0.1"/>
          <Constant key="Parameter_7481" name="q0_mdm2" value="0.0001"/>
          <Constant key="Parameter_7491" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_7486" name="h" value="2"/>
          <Constant key="Parameter_8843" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="Transcription of Bax gene R62" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8844" name="s3" value="0.03"/>
          <Constant key="Parameter_7339" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_7337" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_7336" name="h" value="2"/>
          <Constant key="Parameter_7338" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="Transcription of p21 gene R47" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7335" name="s3" value="0.1"/>
          <Constant key="Parameter_7334" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_7332" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_7331" name="h" value="2"/>
          <Constant key="Parameter_7333" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="Transcription of PTEN gene R39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7330" name="s3" value="0.03"/>
          <Constant key="Parameter_7329" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_7321" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_7320" name="h" value="2"/>
          <Constant key="Parameter_7322" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="Transcription of Wip1 gene R35" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7319" name="s3" value="0.1"/>
          <Constant key="Parameter_7318" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_8507" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_8508" name="h" value="2"/>
          <Constant key="Parameter_8510" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="Translation of Bax mRNA R64" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8506" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="t_Bax_mRNA is on" fireAtInitialTime="1" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_arrester],Reference=Concentration> > 18000
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t_Bax_mRNA]" targetKey="ModelValue_178">
            <Expression>
              0.00000000005
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="t_Bax_mRNA is off" fireAtInitialTime="1" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration> &lt; 18000
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t_Bax_mRNA]" targetKey="ModelValue_178">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Stop Irradiation" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time> >= 601
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[is_IR_switched_on]" targetKey="ModelValue_135">
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
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[L]" value="1.8066422279999982e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R]" value="1.204428152e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[flip]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC8]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BAR]" value="6.0221407599999927e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC3]" value="6.022140759999938e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bid]" value="2.4088563039999752e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC6]" value="6.022140759999938e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Ub C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP]" value="6.0221407600000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cPARP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Smac]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cytosolic Bcl-2]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bcl-2]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[L:R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[flip:R#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R#:pC8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C6:pC8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BAR:C8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:pC3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:Bid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C3:pC6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP:C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop:XIAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Smac:XIAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bcl2c:tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax:tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M]" value="3.0110703800000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:M]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac_m]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:Smac_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC_m]" value="3.0110703800000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:CytoC_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[CytoC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apaf]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[CytoC:Apaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apaf#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC9]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax_(free)]" value="8.5820323542608e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Caspase]" value="8.5820925756684003e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proCaspase]" value="6.0221407599999532e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)]" value="6.1368625414779999e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_free]" value="9.287615257193532e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex]" value="1.9998505700030801e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)]" value="5.1455338624113606e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)]" value="3.6644425417561702e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E (free)]" value="1.0242577447423094e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E:p21_complex]" value="6.6666904855427648e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p21_(free)]" value="7.8393819557375987e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[E2F1]" value="1.1356372380985092e+29" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex]" value="6.8790913901479873e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)]" value="1.8616785724056399e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[HIPK2]" value="1.1388530612643599e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated]" value="1.5628238150498792e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0]" value="6.0221407599999567e+28" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax_mRNA]" value="2.0007117361317601e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p21_mRNA]" value="6.6690391204392005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PTEN]" value="6.6690391204392007e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Wip1 mRNA]" value="6.6690391204392005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PTEN mRNA]" value="2.0007117361317601e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p]" value="3.1734995605787201e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_arrester]" value="1.1835313235627981e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated]" value="6.5442001424843215e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_killer]" value="4.1843038428631998e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2 mRNA]" value="6.4754272950052004e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_0phosphorylated]" value="1.6463027302650001e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated]" value="4.6884654230088605e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_0phosphorylated]" value="2.6778653317491826e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated]" value="1.59018842266332e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Wip1]" value="2.2230130401464e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex]" value="2.7566662628063646e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated]" value="1.9379851179755823e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP3]" value="2.8575901005906267e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb_phosphorylated]" value="1.7192345283744633e+29" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_phosphorylated]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex]" value="8.5660839188855184e+27" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[DNA_double_strand_break]" value="1.7164185151336702e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_0]" value="4.0841556420243491e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PI3K_tot]" value="6.0221407599999496e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP2]" value="3.1645506594093252e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[ATM_0]" value="6.0221407440980499e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_tot]" value="6.0221407599999312e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[ATM_tot]" value="6.0221407599999338e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_tot]" value="3.613284456e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_tot]" value="6.0221407599999426e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[E2F1_tot]" value="1.204428151999989e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_tot]" value="1.2044281519999896e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP_tot]" value="6.0221407599999514e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb_tot]" value="1.8066422280000001e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot]" value="6.0221407599999567e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p_Apoptosis_A]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p_Apoptosis_C]" value="88557347803822112" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k1]" value="3.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k2]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k3]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_3]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k4]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_4]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k5]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_5]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k6]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_6]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc6]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k7]" value="2.9999999999999997e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_7]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k8]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_8]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k9]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_9]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc9]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k10]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_10]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc10]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k11]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_11]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k12]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_12]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc12]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k13]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_13]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k14]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_14]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k15]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_15]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k16]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_16]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k17]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_17]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k18]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_18]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k19]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_19]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc19]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k20]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_20]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc20]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k21]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_21]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc21]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k22]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_22]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k23]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_23]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc23]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k24]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_24]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k25]" value="5.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_25]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc25]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k26]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_26]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k27]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_27]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k28]" value="6.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_28]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc7]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[pC3 fraction]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[degraded C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[cPARP fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3]" value="9999.9999999998963" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[free C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[a1]" value="3e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[a2]" value="9.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b1]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b3]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b4]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b5]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d1]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[can_Caspase_make_DNA_DSB]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d10]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d6]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d7]" value="2.9999999999999999e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d8]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d9]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_due_to_IR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_max]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d12]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d2]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d3]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_per_IR_Gy]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_RepairCplx_total]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g14]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g15]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g16]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g17]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g18]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g19]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g2]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g20]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g10]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g101]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g11]" value="9.9999999999999994e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g12]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g13]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g3]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g4]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[IR_Gy]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p10]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p12]" value="1.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p2]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p3]" value="2.9999999999999997e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p5]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g5]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g6]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g7]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g8]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g9]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h2]" value="1e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[has_DNA_DSB_repair]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[i1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[is_IR_switched_on]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M2]" value="100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M3]" value="200000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p6]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p7]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_pten]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s10]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s2]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s4]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s6]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p8]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p9]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_bax]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_mdm2]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_p21]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_pten]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_wip1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_bax]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_mdm2]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_p21]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_wip1]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[rep]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s7]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s8]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[time_days]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[tp2]" value="600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u3]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u6]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s9]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t_Bax_mRNA]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[Caspase*]" value="96910" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[Apop*]" value="36708" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k1" value="3.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re2],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k1" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re9],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re9],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re10],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re11],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re11],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re12],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re13],ParameterGroup=Parameters,Parameter=k1" value="5.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re13],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re14],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re15],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re15],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re16],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re17],ParameterGroup=Parameters,Parameter=k1" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re17],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re18],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re19],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re19],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re20],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re21],ParameterGroup=Parameters,Parameter=k1" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re21],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=k1" value="6.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re23],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re23],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re24],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re24],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re25],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re26],ParameterGroup=Parameters,Parameter=k13" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re26],ParameterGroup=Parameters,Parameter=k_13" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=k14" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=k_14" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=k15" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=k_15" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=k17" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=k_17" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=k16" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=k_16" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=k18" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=k_18" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=k19" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=k_19" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re34],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=k21" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=k_21" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re36],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re37],ParameterGroup=Parameters,Parameter=k26" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k26],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re37],ParameterGroup=Parameters,Parameter=k_26" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_26],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=k20" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=k_20" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re39],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re40],ParameterGroup=Parameters,Parameter=k22" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re40],ParameterGroup=Parameters,Parameter=k_22" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re41],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re41],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re42],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[kc23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re43],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[re43],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[k_24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Activation of caspases by active (free) Bax R81]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Activation of caspases by active (free) Bax R81],ParameterGroup=Parameters,Parameter=k" value="3e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Activation_autoactivation of caspases R82]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Activation_autoactivation of caspases R82],ParameterGroup=Parameters,Parameter=a2" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Bad_p and 14-3-3 R78]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Bad_p and 14-3-3 R78],ParameterGroup=Parameters,Parameter=k" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Bax and BclXL R66]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Bax and BclXL R66],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of BclXL and Bad_0 R71]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of BclXL and Bad_0 R71],ParameterGroup=Parameters,Parameter=k1" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Cyclin_E and p21 R50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Cyclin_E and p21 R50],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Rb1 and E2F1 R54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Binding of Rb1 and E2F1 R54],ParameterGroup=Parameters,Parameter=k" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[b4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8],ParameterGroup=Parameters,Parameter=g7" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R67],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephoshorylation by Wip1 R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephoshorylation by Wip1 R3],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation R72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation R72],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phopshorylation at PIP3 R45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phopshorylation at PIP3 R45],ParameterGroup=Parameters,Parameter=p12" value="1.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phoshorylation due to IR R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=p1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=M1" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of Bax mRNA R63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of Bax mRNA R63],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of caspases R83]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of caspases R83],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of p21 mRNA R48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of p21 mRNA R48],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of p21 R52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of p21 R52],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of proCaspase R80]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of proCaspase R80],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of PTEN R42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation of PTEN R42],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R36],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R40],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R60],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation R61],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation Ser395p-dependent R34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation Ser395p-dependent R34],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R23],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R27],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R29],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R30],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous R33],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=g11" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of AKT R46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of AKT R46],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999999e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53],ParameterGroup=Parameters,Parameter=d12" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53],ParameterGroup=Parameters,Parameter=M2" value="100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of SIAH1_p R6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of SIAH1_p R6],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Bax:BclXL complex R65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Bax:BclXL complex R65],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of BclXL:Bad complex R68]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of BclXL:Bad complex R68],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of BclXL:Bad complex R73]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of BclXL:Bad complex R73],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[u5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=h1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=DNA_DSB_DUE_to_IR" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_due_to_IR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=is_IR_switched_on" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[is_IR_switched_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=h2" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=DNA_DSB_max" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA Repair R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA Repair R2],ParameterGroup=Parameters,Parameter=rep" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[rep],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[DNA Repair R2],ParameterGroup=Parameters,Parameter=DNA_DSB_RepairCplx_total" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_RepairCplx_total],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[i1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43],ParameterGroup=Parameters,Parameter=p8" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of proCaspase R79]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of proCaspase R79],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of mdm2 R24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of mdm2 R24],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of p21 mRNA R49]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of p21 mRNA R49],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of PTEN_mRNA R41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of PTEN_mRNA R41],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Wip mRNA R37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Wip mRNA R37],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Wip mRNA R38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Wip mRNA R38],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[g8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation by ATM_p R5],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[p10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis induced by E2F1 R59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis induced by E2F1 R59],ParameterGroup=Parameters,Parameter=s9" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis induced by E2F1 R59],ParameterGroup=Parameters,Parameter=M3" value="200000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[M3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of HIPK2 R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of HIPK2 R7],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of p53_0p R9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis of p53_0p R9],ParameterGroup=Parameters,Parameter=v" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis R58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Synthesis R58],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q0_mdm2" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_mdm2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_mdm2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=s3" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_bax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_bax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_p21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_p21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=s3" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_pten],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_pten],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[s1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q0_wip1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q1_wip1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Bax mRNA R64]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Translation of Bax mRNA R64],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[t4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
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
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 5.1455338624113606e+28 2.6778653317491826e+28 0 0 6.1368625414779999e+22 1.0242577447423094e+29 4.1843038428631998e+19 0 3.6644425417561702e+22 6.0221407599999532e+28 1.8616785724056399e+27 1.5628238150498792e+28 1.6463027302650001e+27 0 0 0 6.0221407599999083e+28 1.1835313235627981e+21 8.5820323542608e+22 7.8393819557375987e+22 0 3.1734995605787201e+20 6.5442001424843215e+26 0 4.6884654230088605e+26 1.2044281519999876e+28 1.1388530612643599e+28 6.0221407599999567e+28 2.0007117361317601e+23 6.6690391204392005e+23 6.6690391204392007e+26 6.6690391204392005e+23 2.0007117361317601e+23 6.4754272950052004e+24 1.59018842266332e+20 2.2230130401464e+26 1.9379851179755823e+28 2.8575901005906267e+28 1.7164185151336702e+19 8.5820925756684003e+21 6.8790913901479873e+27 0 0 6.6666904855427648e+26 0 6.022140759999938e+27 0 0 0 1.2044281519999876e+28 0 1.9998505700030801e+26 0 0 0 0 0 0 6.0221407599999927e+26 0 0 0 6.0221407600000001e+29 6.0221407599999083e+28 0 0 6.0221407599999083e+28 6.0221407599999083e+28 0 0 0 1.8066422279999982e+27 2.4088563039999752e+28 3.0110703800000001e+29 0 0 0 6.022140759999938e+27 0 6.0221407599999083e+28 0 0 3.0110703800000001e+29 6.0221407599999999e+25 0 0 0 1.204428152e+26 1.2044281519999876e+28 9.287615257193532e+28 1.1356372380985092e+29 1.7192345283744633e+29 0 8.5660839188855184e+27 3.1645506594093252e+28 6.0221407440980499e+28 0 88557347803822112 2.7566662628063646e+28 4.0841556420243491e+28 1 0 0 0 9999.9999999998963 0 0 1e-13 0.001 0 6.0221407599999426e+28 1.204428151999989e+29 1.2044281519999896e+29 6.0221407599999514e+28 1.8066422280000001e+29 6.0221407599999567e+28 6.0221407599999312e+28 6.0221407599999338e+28 3.613284456e+28 6.0221407599999496e+28 1 1 3.9999999999999998e-07 0.001 1.0000000000000001e-05 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 1 2.9999999999999997e-08 0.001 1.9999999999999999e-06 0.001 0.10000000000000001 9.9999999999999995e-07 0.01 1 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 0.01 0.01 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 1.9999999999999999e-06 0.001 10 1.9999999999999999e-06 0.001 10 0.01 0.01 4.9999999999999998e-07 0.001 1 4.9999999999999998e-08 0.001 5.0000000000000001e-09 0.001 1 0.01 0.01 1.9999999999999999e-06 0.001 6.9999999999999999e-06 0.001 1 0.070000000000000007 3e-10 9.9999999999999998e-13 3.0000000000000001e-05 0.0030000000000000001 0.0030000000000000001 1.0000000000000001e-05 1.0000000000000001e-05 1e-08 1 0.0001 1e-10 1e-10 0.0001 1e-10 2.9999999999999999e-07 0.0001 3.0000000000000001e-05 1000000 10000 3.0000000000000001e-05 0.0001 10 20 0.0001 3.0000000000000001e-05 0.0001 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.0001 1.0000000000000001e-05 0.00029999999999999997 1.0000000000000001e-05 9.9999999999999994e-12 1e-13 1e-13 0.00029999999999999997 0.00029999999999999997 0 3.0000000000000001e-06 1e-10 1.0000000000000001e-09 1e-08 2.9999999999999997e-08 1e-10 1e-08 0.00029999999999999997 3.0000000000000001e-05 1e-13 0.00029999999999999997 0.0001 2 9.9999999999999995e-07 1 0.001 1 5 100000 200000 0.00029999999999999997 1e-08 3e-09 2.9999999999999998e-13 0.10000000000000001 3 0.029999999999999999 0.10000000000000001 0.029999999999999999 0.10000000000000001 300 3e-09 3.0000000000000001e-06 1.0000000000000001e-05 0.0001 1.0000000000000001e-05 1.0000000000000001e-05 1.0000000000000001e-05 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 0.0030000000000000001 30 30 0.10000000000000001 600 0.001 0.001 0.001 0.0001 0.0001 30 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0 96910 36708 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1667"/>
        <Parameter name="StepSize" type="float" value="29.9940012"/>
        <Parameter name="Duration" type="float" value="50000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="[L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[flip]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[flip],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proC8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[casp8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[casp6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BAR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BAR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proC3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[casp3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bid]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[tBid]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[tBid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proC6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[XIAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ub C3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PARP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cPARP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Smac]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Smac],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cytosolic Bcl-2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[cytosolic Bcl-2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax#]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bcl-2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bcl-2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L:R]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[L:R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R#]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[flip:R#]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[flip:R#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R#:pC8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[R#:pC8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6:pC8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C6:pC8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BAR:C8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BAR:C8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8:pC3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pC3:Apop]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Apop]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8:Bid]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C8:Bid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C3:pC6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[XIAP:C3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PARP:C3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Apop:XIAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop:XIAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Smac:XIAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Smac:XIAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bcl2c:tBid]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bcl2c:tBid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax:tBid]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax:tBid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Baxm:Bcl2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm:Bcl2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax2:Bcl2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2:Bcl2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax4:Bcl2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:Bcl2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax4:M]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:M],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M#]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Smac_m]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac_m],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M#:Smac_m]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:Smac_m],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Smac released]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac released],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CytoC_m]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC_m],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M#:CytoC_m]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:CytoC_m],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CytoC released]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC released],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CytoC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[CytoC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Apaf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apaf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CytoC:Apaf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[CytoC:Apaf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Apaf#]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apaf#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proC9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proC9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Baxm]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Caspase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Caspase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proCaspase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[proCaspase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_phosphorylated_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fourteen33_free]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_free],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax:BclXL_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BclXL_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_0_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin_E (free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E (free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin_E:p21_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E:p21_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p21_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p21_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E2F1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[E2F1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb1_0:E2F1 complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb1_0_(free)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HIPK2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[HIPK2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_nuc_S166S186phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SIAH1_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bax_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Bax_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p21_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p21_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PTEN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PTEN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wip1 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Wip1 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PTEN mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PTEN mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_nuc_S166S186p_S395p]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_arrester]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_arrester],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_S46phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_killer]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_cyt_0phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_0phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mdm2_cyt_S166S186phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_0phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_0phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATM_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wip1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Wip1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bad_phosphorylated_Fourteen33_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKT_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rb_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Rb_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SIAH1_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[SIAH1_phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BclXL_Bad_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DNA_double_strand_break]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[DNA_double_strand_break],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKT_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3K_tot]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PI3K_tot],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[PIP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATM_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[ATM_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[pC3 fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[pC3 fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[C3 fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[C3 fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[degraded C3 fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[degraded C3 fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[cPARP fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[cPARP fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[total Caspase 3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[total Caspase 3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[free C3 fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[free C3 fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DNA_DSB_due_to_IR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[DNA_DSB_due_to_IR],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[h2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[rep]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[rep],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[time_days]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Values[time_days],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Caspase &amp; Apop &amp; M#" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[Caspase]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Caspase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M#]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[mitochondrion],Vector=Metabolites[M#],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Apop]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Apop],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="p53_killer_related_species" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[Mdm2_nuc_S166S186phosphorylated]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wip1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[Wip1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_S46phosphorylated]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p53_killer]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="p53_related_fluxes" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="(Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation at Ser46 by Wip1 R17).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Dephosphorylation of Ser15 and Ser20 R21).Flux|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Merged_Apoptosis_Pathways,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="../Merged_Apoptosis_Pathways.xml">
    <SBMLMap SBMLid="AKT_0" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="AKT_phosphorylated" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="AKT_tot" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="ATM_0" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="ATM_phosphorylated" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="ATM_tot" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="Activation_autoactivation_of_caspases_R82" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Activation_of_caspases_by_active__free__Bax_R81" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Apaf" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="Apaf_hash" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Apop" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Apop_0" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="Apop_XIAP" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="BAR" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="BAR_C8" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Bad_0__free" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="Bad_phosphorylated_Fourteen33_complex" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="Bad_phosphorylated__free" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="Bad_tot" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="Bax" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Bax2" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Bax2_Bcl2" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Bax4" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Bax4_Bcl2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Bax4_M" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="Bax_BclXL_complex" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="Bax__free" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="Bax_hash" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Bax_mRNA" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="Bax_tBid" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Baxm" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="Baxm_Bcl2" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Bcl2" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Bcl2c" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Bcl2c_tBid" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="BclXL_Bad_complex" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="BclXL__free" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="BclXL_tot" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="Bid" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Binding_of_Bad_p_and_14_3_3_R78" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="Binding_of_Bax_and_BclXL_R66" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="Binding_of_BclXL_and_Bad_0_R71" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="Binding_of_Cyclin_E_and_p21_R50" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="Binding_of_Rb1_and_E2F1_R54" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="C3" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="C3_UB_frac" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="C3_Ub" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="C3_frac" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="C3_pC6" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="C3_tot" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="C6" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="C6_pC8" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="C8" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="C8_Bid" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="C8_pC3" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="CPARP" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Caspase" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="Caspase_0" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Cyclin_E__free" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="Cyclin_E_p21_complex" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="CytoC" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="CytoC_Apaf" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="CytoCm" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="CytoCr" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="DNA_DSB_RepairCplx_total" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="DNA_DSB_due_to_IR" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="DNA_DSB_max" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="DNA_DSB_per_IR_Gy" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="DNA_Repair_R2" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="DNA_damage_R1" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="DNA_double_strand_break" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="Degradation_R36" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="Degradation_R40" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="Degradation_R60" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="Degradation_R61" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="Degradation_R67" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="Degradation_Ser395p_dependent_R34" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="Degradation_induced_by_Mdm2_nuc_S166S186p_and_SIAH1_R8" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="Degradation_of_Bax_in_Bax_BclXL_complex_R69" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="Degradation_of_Bax_mRNA_R63" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="Degradation_of_PTEN_R42" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="Degradation_of_caspases_R83" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="Degradation_of_p21_R52" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="Degradation_of_p21_mRNA_R48" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="Degradation_of_proCaspase_R80" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R23" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R27" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R29" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R30" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="Degradation_spontaneous_R33" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R15" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R19" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="Degradation_spontaneous_and_induced_by_Mdm2_nuc_S166S186p_R20" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="Degradation_spontanuous_and_induced_by_Mdm2_nuc_S166S186p__R12" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="Dephoshorylation_by_Wip1_R3" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Dephosphorylation_R72" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="Dephosphorylation_and_dissociation_of_Bad_p_in_Bad_14_3_3_complex_R75" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="Dephosphorylation_at_Ser166_and_186_R26" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="Dephosphorylation_at_Ser46_by_Wip1_R17" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="Dephosphorylation_of_AKT_R46" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PIP3_by_PTENR44" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Rb1_at_S567_R53" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="Dephosphorylation_of_SIAH1_p_R6" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser15_and_Ser20_R21" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser395_of_Mdm2_nuc_S166S186p_S395p_by_Wip1_R32" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="Dephosphorylation_of_Ser46_by_Wip1_R13" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="Dephosphorylation_spontaneous_of_p53_arrester_R11" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="Dissociation_of_Bad_14_3_3_complex_R76" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="Dissociation_of_Bax_BclXL_complex_R65" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="Dissociation_of_BclXL_Bad_complex_R68" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="Dissociation_of_BclXL_Bad_complex_R73" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="Dissociation_of_Rb1_E2F1_complex_R56" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="Dissociation_of_complex_Cyclin_E_p21_R51" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="E2F1" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="E2F1_tot" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="Fourteen33_free" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="Fourteen33_tot" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="Function_for_R1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_R12" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_R2" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_R22" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_R4" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_R43" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_R45" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_R53" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_R59" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_R8" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_R82" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_re26" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_re27" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_re29" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_re30" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_re31" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_re32" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_re33" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_re35" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_re37" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_re38" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_re40" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_modifier" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_modifier1_modifier2" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_substrate_modifier" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="HIPK2" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="IR_Gy" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="L" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="L_R" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="M1" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="M2" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="M3" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="M_hash" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="M_hash_CytoCm" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="M_hash_Smacm" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="Mdm2_cyt_0phosphorylated" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="Mdm2_cyt_S166S186phosphorylated" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="Mdm2_mRNA" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="Mdm2_nuc_S166S186p_S395p" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="Mdm2_nuc_S166S186phosphorylated" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="Nuclear_import_of_Mdm2_cyto_S166S186p_R28" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="PARP" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PARP_C3" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="PI3K_tot" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="PIP_tot" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="PTEN" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="PTEN_mRNA" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="Phopshorylation_at_PIP3_R45" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="Phopshorylation_of_PIP2_by_PI3K_R43" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="Phoshorylation_due_to_IR_R4" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="Phosphorylation_at_Ser46_by_HIPK2_R14" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="Phosphorylation_at_Ser46_by_HIPK2_R16" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_R5" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_at_Ser395_R31" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R10" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="Phosphorylation_by_ATM_p_on_Ser15_and_Ser20_R18" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_0_by_AKT_p_R74" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_in_BclXL_Bad_complex_R70" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="Phosphorylation_of_Bad_in_BclXL_Bad_complex_and_complex_Dissociation_R77" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="Phosphorylation_of_Mdm2_cyt_0_by_AKT_p_R25" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="Phosphorylation_of_Rb1_by_Cyclin_E__R55" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="Phosphorylation_of_Rb1_in_Rb1_E2F1_complex_by_Cyclin_ER57" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="R_hash" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="R_hash_pC8" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Rb1_0_E2F1_complex" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="Rb1_0__free" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="Rb_phosphorylated" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="Rb_tot" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="SIAH1_0" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="SIAH1_phosphorylated" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="SIAH1_tot" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="Smac" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Smac_XIAP" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Smacm" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Smacr" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="Stop_Irradiation" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="Synthesis_R58" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="Synthesis_induced_by_E2F1_R59" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="Synthesis_of_HIPK2_R7" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="Synthesis_of_p53_0p_R9" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="Synthesis_of_proCaspase_R79" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="Transcription_Mdm2_gene_transcription_R22" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="Transcription_of_Bax_gene_R62" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="Transcription_of_PTEN_gene_R39" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="Transcription_of_Wip1_gene_R35" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="Transcription_of_p21_gene_R47" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="Translation_of_Bax_mRNA_R64" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="Translation_of_PTEN_mRNA_R41" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="Translation_of_Wip_mRNA_R37" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="Translation_of_Wip_mRNA_R38" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="Translation_of_mdm2_R24" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="Translation_of_p21_mRNA_R49" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="Wip1" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="Wip1_mRNA" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="XIAP" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="XIAP_C3" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="b1" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="b2" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="b3" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="b4" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="b5" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="cPARP_frac" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="can_Caspase_make_DNA_DSB" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="d10" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="d11" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="d12" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="d2" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="d3" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="d4" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="d5" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="d6" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="d7" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="d8" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="d9" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="fC3_fract" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="flip" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="flip_R_hash" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="g1" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="g10" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="g101" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="g11" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="g12" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="g13" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="g14" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="g15" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="g16" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="g17" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="g18" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="g19" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="g2" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="g20" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="g3" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="g4" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="g5" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="g6" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="g7" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="g8" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="g9" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="h1" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="h2" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="has_DNA_DSB_repair" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="i1" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="is_IR_switched_on" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="k19" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="k23" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="k24" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="k25" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="k26" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="k27" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="k28" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k_1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_10" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k_11" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k_12" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="k_13" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k_14" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k_15" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k_16" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="k_17" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="k_18" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="k_19" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="k_2" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_20" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="k_21" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="k_22" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="k_23" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="k_24" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="k_25" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="k_26" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="k_27" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="k_28" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="k_3" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k_4" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k_5" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k_6" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k_7" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k_8" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k_9" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kc1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="kc10" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="kc12" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="kc19" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kc20" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kc21" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kc23" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kc25" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kc3" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kc5" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kc6" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kc7" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kc8" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kc9" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="mitochondrion" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="p10" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="p11" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="p12" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="p21__free" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="p21_mRNA" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="p4" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="p5" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="p53_0phosphorylated" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="p53_S46phosphorylated" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="p53_arrester" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="p53_killer" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="p6" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="p7" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="p8" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="p9" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="pC3" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="pC3_Apop" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="pC3_frac" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="pC6" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="pC8" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="pC9" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="p_Apoptosis_A" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="p_Apoptosis_C" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="proCaspase" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="q0_bax" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="q0_mdm2" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="q0_p21" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="q0_pten" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="q0_wip1" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="q1_bax" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="q1_mdm2" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="q1_p21" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="q1_pten" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="q1_wip1" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="q2" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re34" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re35" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="re39" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re40" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="re43" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="rep" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="s1" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="s10" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="s2" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="s3" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="s4" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="s5" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="s6" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="s7" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="s8" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="s9" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="t2" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="t3" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="t4" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="t5" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="tBid" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="t_Bax_mRNA" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="t_Bax_mRNA_is_off" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="t_Bax_mRNA_is_on" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="time_days" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="tp2" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="u1" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="u2" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="u3" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="u5" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="u6" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_70"/>
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
