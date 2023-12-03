<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.40 (Build 278) (http://www.copasi.org) at 2023-12-03T15:41:26Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="40" versionDevel="278" copasiSourcesModified="0">
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
    <Function key="Function_42" name="Function for re26" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cell*(Bax_hash*k13-Baxm*k_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Bax_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="Baxm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_273" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_272" name="k13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="k_13" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re27" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Bcl2*k14/v-Baxm_Bcl2*k_14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="Baxm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Baxm_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_278" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="k_14" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re29" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Baxm*k15/v-Bax2*k_15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="Bax2" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="Baxm" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="k15" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="k_15" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re30" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bax2*Bax2*k17/v-Bax4*k_17
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="Bax4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_289" name="k17" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="k_17" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for re31" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax2*k16/v-Bax2_Bcl2*k_16
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="Bax2_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_294" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="k16" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="k_16" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re32" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax4*k18/v-Bax4_Bcl2*k_18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="Bax4_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_301" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="k18" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="k_18" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for re33" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Bax4*M*k19/v-Bax4_M*k_19
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_309" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="Bax4_M" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_307" name="M" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="k19" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="k_19" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for re35" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        M_hash*Smacm*k21/v-M_hash_Smacm*k_21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="M_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="M_hash_Smacm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_313" name="Smacm" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="k21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="k_21" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for re37" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        cell*(Smacr*k26-Smac*k_26)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="Smac" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_320" name="Smacr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="k26" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="k_26" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for re38" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        M_hash*CytoCm*k20/v-M_hash_CytoCm*k_20
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="CytoCm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="M_hash" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="M_hash_CytoCm" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_322" name="k20" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="k_20" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for re40" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        cell*(CytoCr*k22-CytoC*k_22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="CytoC" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_331" name="CytoCr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_329" name="k22" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="k_22" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R82" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a2*y33^2*y32
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="a2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="y33" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_334" name="y32" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function substrate modifier" type="UserDefined" reversible="unspecified">
      <Expression>
        k*modifier*substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="modifier" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_333" name="substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (h1*DNA_DSB_DUE_to_IR*is_IR_switched_on+h2*y33)*(DNA_DSB_max-y1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="h1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="DNA_DSB_DUE_to_IR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="is_IR_switched_on" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="h2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="y33" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="DNA_DSB_max" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="y1" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R12" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (g101+g11*y12^h)*y5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="g101" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="g11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="y12" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="h" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="y5" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        y1*rep/(y1+DNA_DSB_RepairCplx_total)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="y1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="rep" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="DNA_DSB_RepairCplx_total" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R22" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s3*(q0_mdm2 + q1_mdm2*y6^h)/(q2+q0_mdm2 + q1_mdm2*y6^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="s3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="q0_mdm2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="q1_mdm2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="y6" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="q2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p1*ATM_0*y1^h/(y1^h+M1^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="p1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="ATM_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="y1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_361" name="h" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="M1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R43" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p8*PIP2*PI3K_tot
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="p8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="PIP2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_366" name="PI3K_tot" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R45" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p12*AKT_0*y18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="p12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="AKT_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="y18" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R53" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d12*Rb_p/(M2+Rb_p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="d12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="Rb_p" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_370" name="M2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R59" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s9*E2F1^2/(M3^2+E2F1^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="s9" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="E2F1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_373" name="M3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g7*y4*(y3+y12)^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_378" name="g7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="y4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="y3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="y12" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function modifier" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*modifier
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="modifier" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function modifier1 modifier2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*modifier1*modifier2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="modifier1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_384" name="modifier2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Albeck2008_extrinsic_apoptosis" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
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
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/18406323"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2009-07-01T17:12:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
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
            <vCard:EMAIL>simon.fourquet@curie.fr</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Fourquet</vCard:Family>
                <vCard:Given>Simon</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Institut Curie</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-25T12:42:31Z</dcterms:W3CDTF>
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
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This the model used in the article:      <br />
    <strong>Quantitative analysis of pathways controlling extrinsic apoptosis in single cells.</strong>
    <br />
          Albeck JG, Burke JM, Aldridge BB, Zhang M, Lauffenburger DA, Sorger PK.      <em>Mol Cell.</em>
          2008 Apr 11;30(1):11-25.
      PMID:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/18406323">18406323</a>
          , doi:      <a href="http://dx.doi.org/10.1016/j.molcel.2008.02.012">10.1016/j.molcel.2008.02.012</a>
    <br />
    <strong>Abstract:</strong>
    <br />
          Apoptosis in response to TRAIL or TNF requires the activation of initiator
	caspases, which then activate the effector caspases that dismantle
	cells and cause death. However, little is known about the dynamics
	and regulatory logic linking initiators and effectors. Using a combination
	of live-cell reporters, flow cytometry, and immunoblotting, we find
	that initiator caspases are active during the long and variable delay
	that precedes mitochondrial outer membrane permeabilization (MOMP)
	and effector caspase activation. When combined with a mathematical
	model of core apoptosis pathways, experimental perturbation of regulatory
	links between initiator and effector caspases reveals that XIAP and
	proteasome-dependent degradation of effector caspases are important
	in restraining activity during the pre-MOMP delay. We identify conditions
	in which restraint is impaired, creating a physiologically indeterminate
	state of partial cell death with the potential to generate genomic
	instability. Together, these findings provide a quantitative picture
	of caspase regulatory networks and their failure modes.      <br />
          The mitochondrial compartment is just added as a logical partition and its volume is not used in the mathematical formulas, to stick closer to the expressions used in the matlab files distributed with the original publication. There only the rate constants for bimolecular reactions are adapted by division by      <em>v</em>
          , the ration of the volumes of the mitochondrial compartment and the total cell.      <br />
          For BCL2 overexpression in figure 5, the initial BCL2 amount was increased by a factor 12 to 2.4*10      <sup>5</sup>
          . For siRNA downregulation of XIAP its amount was multiplied by  0.13 to 1.3*10      <sup>4</sup>
          .      </p>
    <br />
    <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
    <br />
    <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>
    </Comment>
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
      <Compartment key="Compartment_2" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="mitochondrion" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
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
      <Metabolite key="Metabolite_110" name="L" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_110">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3803"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P50591"/>
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
      <Metabolite key="Metabolite_111" name="R" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2540"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763"/>
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
      <Metabolite key="Metabolite_112" name="flip" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_112">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omim/603599"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2438"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15519"/>
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
      <Metabolite key="Metabolite_113" name="proC8" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
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
      <Metabolite key="Metabolite_114" name="casp8" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_114">
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
      <Metabolite key="Metabolite_115" name="casp6" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_115">
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
      <Metabolite key="Metabolite_116" name="BAR" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_116">
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
      <Metabolite key="Metabolite_117" name="proC3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
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
      <Metabolite key="Metabolite_118" name="casp3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_118">
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
      <Metabolite key="Metabolite_119" name="Bid" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
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
      <Metabolite key="Metabolite_120" name="tBid" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_120">
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
      <Metabolite key="Metabolite_121" name="proC6" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
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
      <Metabolite key="Metabolite_122" name="XIAP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_122">
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
      <Metabolite key="Metabolite_123" name="Ub C3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
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
      <Metabolite key="Metabolite_124" name="PARP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_124">
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
      <Metabolite key="Metabolite_125" name="cPARP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
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
      <Metabolite key="Metabolite_126" name="Smac" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_126">
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
      <Metabolite key="Metabolite_127" name="cytosolic Bcl-2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
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
      <Metabolite key="Metabolite_128" name="Bax" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_128">
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
      <Metabolite key="Metabolite_129" name="Bax#" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
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
      <Metabolite key="Metabolite_130" name="Bcl-2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_130">
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
      <Metabolite key="Metabolite_131" name="L:R" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
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
      <Metabolite key="Metabolite_132" name="R#" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_132">
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
      <Metabolite key="Metabolite_133" name="flip:R#" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_133">
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
      <Metabolite key="Metabolite_134" name="R#:pC8" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_134">
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
      <Metabolite key="Metabolite_135" name="C6:pC8" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_135">
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
      <Metabolite key="Metabolite_136" name="BAR:C8" simulationType="reactions" compartment="Compartment_2" addNoise="false">
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
      <Metabolite key="Metabolite_137" name="C8:pC3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_137">
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
      <Metabolite key="Metabolite_138" name="pC3:Apop" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>pC3:Apop</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="Apop" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14727"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55211"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043293"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5647"/>
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
      <Metabolite key="Metabolite_140" name="C8:Bid" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_140">
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
      <Metabolite key="Metabolite_141" name="C3:pC6" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_141">
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
      <Metabolite key="Metabolite_142" name="XIAP:C3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:positionToCompartment xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">inside</celldesigner:positionToCompartment><celldesigner:speciesIdentity xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:class>COMPLEX</celldesigner:class>
  <celldesigner:name>XIAP:C3</celldesigner:name>
</celldesigner:speciesIdentity>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="PARP:C3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_143">
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
      <Metabolite key="Metabolite_144" name="Apop:XIAP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_144">
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
      <Metabolite key="Metabolite_145" name="Smac:XIAP" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_145">
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
      <Metabolite key="Metabolite_146" name="Bcl2c:tBid" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_146">
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
      <Metabolite key="Metabolite_147" name="Bax:tBid" simulationType="reactions" compartment="Compartment_2" addNoise="false">
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
      <Metabolite key="Metabolite_148" name="Baxm:Bcl2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_148">
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
      <Metabolite key="Metabolite_149" name="Bax4" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
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
      <Metabolite key="Metabolite_150" name="Bax2:Bcl2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_150">
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
      <Metabolite key="Metabolite_151" name="Bax4:Bcl2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
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
      <Metabolite key="Metabolite_152" name="M" simulationType="reactions" compartment="Compartment_3" addNoise="false">
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
      <Metabolite key="Metabolite_153" name="Bax4:M" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
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
      <Metabolite key="Metabolite_154" name="M#" simulationType="reactions" compartment="Compartment_3" addNoise="false">
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
      <Metabolite key="Metabolite_155" name="Smac_m" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
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
      <Metabolite key="Metabolite_156" name="M#:Smac_m" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_156">
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
      <Metabolite key="Metabolite_157" name="Smac released" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_157">
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
      <Metabolite key="Metabolite_158" name="CytoC_m" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_158">
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
      <Metabolite key="Metabolite_159" name="M#:CytoC_m" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_159">
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
      <Metabolite key="Metabolite_160" name="CytoC released" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_160">
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
      <Metabolite key="Metabolite_161" name="CytoC" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_161">
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
      <Metabolite key="Metabolite_162" name="Apaf" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_162">
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
      <Metabolite key="Metabolite_163" name="CytoC:Apaf" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_163">
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
      <Metabolite key="Metabolite_164" name="Apaf#" simulationType="reactions" compartment="Compartment_2" addNoise="false">
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
      <Metabolite key="Metabolite_165" name="proC9" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_165">
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
      <Metabolite key="Metabolite_166" name="Baxm" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_166">
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
      <Metabolite key="Metabolite_167" name="Bax2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_167">
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
      <Metabolite key="Metabolite_168" name="Bax_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_169" name="Caspase" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_170" name="proCaspase" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_170">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="Bad_phosphorylated_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_171">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_172" name="Fourteen33_free" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_172">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="Bax:BclXL_complex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_174" name="BclXL_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_175" name="Bad_0_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_175">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_176" name="Cyclin_E (free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_176">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="Cyclin_E:p21_complex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_178" name="p21_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_178">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="E2F1" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[E2F1_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_180" name="Rb1_0:E2F1 complex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_180">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_181" name="Rb1_0_(free)" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_182" name="HIPK2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_183" name="Mdm2_nuc_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_184" name="SIAH1_0" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_185" name="Bax_mRNA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_185">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_186" name="p21_mRNA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_186">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_187" name="PTEN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_187">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_188" name="Wip1 mRNA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_189" name="PTEN mRNA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_189">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_190" name="Mdm2_nuc_S166S186p_S395p" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_191" name="p53_arrester" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_192" name="p53_S46phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_192">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_193" name="p53_killer" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_194" name="Mdm2 mRNA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_194">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_195" name="Mdm2_cyt_0phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_196" name="Mdm2_cyt_S166S186phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_197" name="p53_0phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_197">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_198" name="ATM_phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_199" name="Wip1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_200" name="Bad_phosphorylated_Fourteen33_complex" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_201" name="AKT_phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_201">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_202" name="PIP3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_203" name="Rb_phosphorylated" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_203">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_204" name="SIAH1_phosphorylated" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_205" name="BclXL_Bad_complex" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_206" name="DNA_double_strand_break" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_206">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_207" name="AKT_0" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_207">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_208" name="PI3K_tot" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_209" name="PIP2" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_210" name="ATM_0" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_210">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[ATM_tot],Reference=Concentration>-&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_211" name="AKT_tot" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_212" name="ATM_tot" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_212">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_213" name="Bad_tot" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_213">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_214" name="BclXL_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_214">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_215" name="E2F1_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_215">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_216" name="Fourteen33_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_217" name="PIP_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_218" name="Rb_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="SIAH1_tot" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_178" name="k1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_179" name="k_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="kc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_180">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="k_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_182">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_183">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="k_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="kc3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_185">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_186">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="k_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_187">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_188">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="k_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_189">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="kc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_190">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_191">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_192" name="k_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_192">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_193" name="kc6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_193">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_194">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="k_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_195">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_196">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="k_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_197">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="kc8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_199">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="k_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="kc9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_201">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="k_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_203">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="kc10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_206" name="k_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_206">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_207" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_207">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_208" name="k_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_208">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_209" name="kc12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_209">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_210" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_210">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_211" name="k_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_212" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_212">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_213" name="k_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_213">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_214" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_214">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_215" name="k_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_215">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_216" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_217" name="k_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_218" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_219" name="k_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_220" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_220">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_221" name="k_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_221">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_222" name="k19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_222">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="k_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_223">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="kc19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_224">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_225">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="k_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_226">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="kc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_227">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_228">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="k_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_229">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_230" name="kc21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_230">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_231" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_231">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_232" name="k_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_232">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_233" name="k23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_233">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="k_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_234">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="kc23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_235">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="k24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_236">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="k_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_237">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="k25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_238">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="k_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_239">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="kc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_240">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="k26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_241">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="k_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="k27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_243">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="k_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_244">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="k28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_245">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="k_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="kc7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_247">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_248">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="pC3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_249">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>)/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_250">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="degraded C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_251">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="cPARP fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_252">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>/(&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="total Caspase 3" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="free C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_254">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_256" name="a2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="b1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="b2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="b3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="b4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_261" name="b5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_262">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_263" name="can_Caspase_make_DNA_DSB" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_264" name="d10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_264">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_265" name="d11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_265">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_266" name="d4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_266">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_267" name="d5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_267">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_268" name="d6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_268">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_269" name="d7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_269">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_270" name="d8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_270">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_271" name="d9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_271">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_272" name="DNA_DSB_due_to_IR" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[IR_Gy],Reference=Value>*&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_per_IR_Gy],Reference=Value>/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[tp2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_273" name="DNA_DSB_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_273">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_274" name="d12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_274">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_275" name="d2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_275">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_276" name="d3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_276">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_277" name="DNA_DSB_per_IR_Gy" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_278" name="DNA_DSB_RepairCplx_total" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_278">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_279" name="g14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_279">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_280" name="g15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_280">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_281" name="g16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_281">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_282" name="g17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_282">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_283" name="g18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_283">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_284" name="g19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_284">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_285" name="g2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_285">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_286" name="g20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_286">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_287" name="g10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_287">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_288" name="g1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_288">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_289" name="g101" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_289">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_290" name="g11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_290">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_291" name="g12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_291">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_292" name="g13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_292">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_293" name="g3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_293">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_294" name="g4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_294">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_295" name="IR_Gy" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_296" name="p10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_296">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_297" name="p11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_297">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_298" name="p12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_298">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_299" name="p2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_299">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_300" name="p3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_300">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_301" name="p4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_301">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_302" name="p5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_302">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_303" name="g5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_303">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_304" name="g6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_304">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_305" name="g7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_305">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_306" name="g8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_306">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_307" name="g9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_307">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_308" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_308">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_309" name="h1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_309">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_310" name="h2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_310">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[can_Caspase_make_DNA_DSB],Reference=Value>*1e-13
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_311" name="has_DNA_DSB_repair" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_312" name="i1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_313" name="is_IR_switched_on" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_314" name="M1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_314">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_315" name="M2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_315">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_316" name="M3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_316">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_317" name="p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_317">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_318" name="p6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_318">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_319" name="p7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_319">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_320" name="q1_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_320">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_321" name="s1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_321">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_322" name="s10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_322">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_323" name="s2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_323">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_324" name="s3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_324">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_325" name="s4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_325">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_326" name="s5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_326">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_327" name="s6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_327">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_328" name="p8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_328">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_329" name="p9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_329">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_330" name="q0_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_330">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_331" name="q0_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_331">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_332" name="q0_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_332">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_333" name="q0_pten" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_333">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_334" name="q0_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_334">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_335" name="q1_bax" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_335">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_336" name="q1_mdm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_336">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_337" name="q1_p21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_337">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_338" name="q1_wip1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_338">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_339" name="q2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_339">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_340" name="rep" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_340">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[has_DNA_DSB_repair],Reference=Value>*1e-3
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_341" name="s7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_341">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_342" name="s8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_342">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_343" name="t5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_343">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_344" name="time_days" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_344">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time>/86400
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_345" name="tp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_345">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_346" name="u1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_346">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_347" name="u2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_347">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_348" name="u3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_348">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_349" name="u5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_349">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_350" name="u6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_350">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_351" name="s9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_351">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_352" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_352">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_353" name="t2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_353">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_354" name="t3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_354">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_355" name="t4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_355">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="t_Bax_mRNA" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_125" name="re1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_125">
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
          <Substrate metabolite="Metabolite_110" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7499" name="k1" value="4e-07"/>
          <Constant key="Parameter_7497" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_110"/>
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="re2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_126">
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
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7496" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="re3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_127">
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
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7502" name="k1" value="1e-06"/>
          <Constant key="Parameter_7498" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_132"/>
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="re4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_128">
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
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7500" name="k1" value="1e-06"/>
          <Constant key="Parameter_7501" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_132"/>
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="re5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
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
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8513" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="re6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_130">
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
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7503" name="k1" value="3e-08"/>
          <Constant key="Parameter_7504" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_115"/>
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="re7" reversible="false" fast="false" addNoise="false">
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
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8514" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="re8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_132">
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
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8515" name="k1" value="1e-06"/>
          <Constant key="Parameter_8511" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_114"/>
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="re9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_133">
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
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8512" name="k1" value="1e-07"/>
          <Constant key="Parameter_7507" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_117"/>
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="re10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_134">
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
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7505" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="re11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_135">
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
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7512" name="k1" value="1e-07"/>
          <Constant key="Parameter_7508" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_114"/>
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="re12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_136">
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
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7620" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="re13" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_137">
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
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7510" name="k1" value="5e-09"/>
          <Constant key="Parameter_7509" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_238"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_117"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_239"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="re14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_138">
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
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7623" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_240"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="re15" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_139">
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
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7622" name="k1" value="1e-06"/>
          <Constant key="Parameter_7506" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_118"/>
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="re16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_140">
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
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7621" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="re17" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_141">
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
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7619" name="k1" value="2e-06"/>
          <Constant key="Parameter_8165" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_118"/>
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="re18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_142">
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
          <Substrate metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8163" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="re19" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_143">
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
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7513" name="k1" value="1e-06"/>
          <Constant key="Parameter_7529" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_124"/>
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="re20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_144">
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
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="re21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_145">
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
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7523" name="k1" value="2e-06"/>
          <Constant key="Parameter_7524" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_122"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="re22" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_146">
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
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8162" name="k1" value="7e-06"/>
          <Constant key="Parameter_7511" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_122"/>
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="re23" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_147">
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
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_146" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7522" name="k1" value="1e-06"/>
          <Constant key="Parameter_8316" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_120"/>
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_146"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="re24" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_148">
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
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7514" name="k1" value="1e-07"/>
          <Constant key="Parameter_8319" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_120"/>
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="re25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_149">
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
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7519" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="re26" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_150">
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
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_166" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8164" name="k13" value="0.01"/>
          <Constant key="Parameter_7518" name="k_13" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="re27" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_151">
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
          <Substrate metabolite="Metabolite_166" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7521" name="k14" value="1e-06"/>
          <Constant key="Parameter_7520" name="k_14" value="0.001"/>
          <Constant key="Parameter_8161" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="re29" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_152">
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
          <Substrate metabolite="Metabolite_166" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7525" name="k15" value="1e-06"/>
          <Constant key="Parameter_7517" name="k_15" value="0.001"/>
          <Constant key="Parameter_7516" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="re30" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_153">
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
          <Substrate metabolite="Metabolite_167" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8607" name="k17" value="1e-06"/>
          <Constant key="Parameter_7528" name="k_17" value="0.001"/>
          <Constant key="Parameter_7526" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="re31" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_154">
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
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8455" name="k16" value="1e-06"/>
          <Constant key="Parameter_8606" name="k_16" value="0.001"/>
          <Constant key="Parameter_8453" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_216"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="re32" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_155">
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
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8452" name="k18" value="1e-06"/>
          <Constant key="Parameter_8610" name="k_18" value="0.001"/>
          <Constant key="Parameter_8608" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_156" name="re33" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_156">
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
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_152" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7527" name="k19" value="1e-06"/>
          <Constant key="Parameter_8609" name="k_19" value="0.001"/>
          <Constant key="Parameter_8454" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_157" name="re34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_157">
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
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8318" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_158" name="re35" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_158">
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
          <Substrate metabolite="Metabolite_154" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8320" name="k21" value="2e-06"/>
          <Constant key="Parameter_8451" name="k_21" value="0.001"/>
          <Constant key="Parameter_8317" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_159" name="re36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_159">
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
          <Substrate metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7530" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_156"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_160" name="re37" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_160">
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
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7533" name="k26" value="0.01"/>
          <Constant key="Parameter_7534" name="k_26" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_242"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_161" name="re38" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_161">
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
          <Substrate metabolite="Metabolite_154" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_158" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7532" name="k20" value="2e-06"/>
          <Constant key="Parameter_7531" name="k_20" value="0.001"/>
          <Constant key="Parameter_7536" name="v" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_248"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_162" name="re39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_162">
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
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_160" stoichiometry="1"/>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7538" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_163" name="re40" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_163">
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
          <Substrate metabolite="Metabolite_160" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7539" name="k22" value="0.01"/>
          <Constant key="Parameter_7537" name="k_22" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_232"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_164" name="re41" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_164">
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
          <Substrate metabolite="Metabolite_161" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_162" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7535" name="k1" value="5e-07"/>
          <Constant key="Parameter_7542" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_161"/>
              <SourceParameter reference="Metabolite_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_165" name="re42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_165">
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
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
          <Product metabolite="Metabolite_164" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7541" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_235"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_166" name="re43" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_166">
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
          <Substrate metabolite="Metabolite_164" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7540" name="k1" value="5e-08"/>
          <Constant key="Parameter_7543" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_164"/>
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_167" name="Activation of caspases by active (free) Bax R81" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_167">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_168" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7544" name="k" value="3e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_168" name="Activation_autoactivation of caspases R82" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_168">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7547" name="a2" value="1e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_169" name="Binding of Bad_p and 14-3-3 R78" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_169">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_172" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7545" name="k" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_170" name="Binding of Bax and BclXL R66" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_170">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7546" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_168"/>
              <SourceParameter reference="Metabolite_174"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_171" name="Binding of BclXL and Bad_0 R71" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_171">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_174" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7548" name="k1" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_174"/>
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_172" name="Binding of Cyclin_E and p21 R50" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_172">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_178" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7549" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_178"/>
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_173" name="Binding of Rb1 and E2F1 R54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_173">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7552" name="k" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_174" name="Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_174">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_182" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_184" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7550" name="g7" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_175" name="Degradation of Bax in Bax:BclXL complex R69" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_175">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7551" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_176" name="Degradation R67" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_168" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7554" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_307"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_168"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_177" name="Dephoshorylation by Wip1 R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7553" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_178" name="Dephosphorylation R72" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_178">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7555" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_179" name="Phopshorylation at PIP3 R45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_207" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_202" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7557" name="p12" value="1e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_202"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_180" name="Phoshorylation due to IR R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_180">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_210" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8472" name="p1" value="0.0003"/>
          <Constant key="Parameter_8473" name="h" value="2"/>
          <Constant key="Parameter_8471" name="M1" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_317"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_314"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_181" name="Phosphorylation at Ser46 by HIPK2 R14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_182" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8475" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_182" name="Phosphorylation at Ser46 by HIPK2 R16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_182">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_182" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7556" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_301"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_183" name="Phosphorylation by ATM_p at Ser395 R31" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_183">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8474" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_318"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_184" name="Degradation of Bax mRNA R63" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8529" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_185"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_185" name="Degradation of caspases R83" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8526" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_186" name="Degradation of p21 mRNA R48" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_186">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8530" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_187" name="Degradation of p21 R52" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_187">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_178" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8528" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_178"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_188" name="Degradation of proCaspase R80" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_188">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8543" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_189" name="Degradation of PTEN R42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_189">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_187" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8544" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_304"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_187"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_190" name="Degradation R36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_190">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_188" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8545" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_188"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_191" name="Degradation R40" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_191">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8541" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_285"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_192" name="Degradation R60" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_192">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8527" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_193" name="Degradation R61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_193">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_194" name="Degradation Ser395p-dependent R34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_194">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7479" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_190"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_195" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_195">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7478" name="g101" value="1e-05"/>
          <Constant key="Parameter_7473" name="g11" value="1e-13"/>
          <Constant key="Parameter_4867" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_196" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_196">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7476" name="g101" value="1e-05"/>
          <Constant key="Parameter_7474" name="g11" value="1e-13"/>
          <Constant key="Parameter_7477" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_197" name="Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4863" name="g101" value="1e-05"/>
          <Constant key="Parameter_7480" name="g11" value="1e-13"/>
          <Constant key="Parameter_7462" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_198" name="Degradation spontaneous R23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7459" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_199" name="Degradation spontaneous R27" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_199">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7458" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_200" name="Degradation spontaneous R29" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7465" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_196"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_201" name="Degradation spontaneous R30" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_201">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7461" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_202" name="Degradation spontaneous R33" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7463" name="k1" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_190"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_203" name="Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_203">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7464" name="g101" value="1e-05"/>
          <Constant key="Parameter_7468" name="g11" value="1e-11"/>
          <Constant key="Parameter_7471" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_204" name="Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_200" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7472" name="k" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_200"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_205" name="Dephosphorylation at Ser166 and 186 R26" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7466" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_196"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_206" name="Dephosphorylation at Ser46 by Wip1 R17" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7470" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_207" name="Dephosphorylation of AKT R46" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_207">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7467" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_208" name="Dephosphorylation of PIP3 by PTENR44" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_208">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_202" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_187" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7469" name="k" value="3e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_202"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_209" name="Dephosphorylation of Rb1 at S567 R53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_209">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7475" name="d12" value="10000"/>
          <Constant key="Parameter_4865" name="M2" value="100000"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_315"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_210" name="Dephosphorylation of Ser15 and Ser20 R21" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4864" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_211" name="Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_190" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7562" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_268"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_190"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_212" name="Dephosphorylation of Ser46 by Wip1 R13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_212">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7559" name="k" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_213" name="Dephosphorylation of SIAH1_p R6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_213">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_184" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_204" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8542" name="k" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_214" name="Dephosphorylation spontaneous of p53_arrester R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_214">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7558" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_215" name="Dissociation of Bad:14-3-3 complex R76" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_215">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_200" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8851" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_348"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_200"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_216" name="Dissociation of Bax:BclXL complex R65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7561" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_346"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_217" name="Dissociation of BclXL:Bad complex R68" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7560" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_218" name="Dissociation of BclXL:Bad complex R73" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8848" name="k" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_219" name="Dissociation of complex Cyclin_E:p21 R51" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_178" stoichiometry="1"/>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8807" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_220" name="Dissociation of Rb1:E2F1 complex R56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_220">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8846" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_180"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_221" name="DNA damage R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_221">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_169" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8845" name="h1" value="1e-06"/>
          <Constant key="Parameter_8796" name="DNA_DSB_DUE_to_IR" value="0.166667"/>
          <Constant key="Parameter_8794" name="is_IR_switched_on" value="1"/>
          <Constant key="Parameter_8793" name="h2" value="1e-13"/>
          <Constant key="Parameter_8847" name="DNA_DSB_max" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_272"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_310"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_222" name="DNA Repair R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_222">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_206" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8795" name="rep" value="0.001"/>
          <Constant key="Parameter_8791" name="DNA_DSB_RepairCplx_total" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_278"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_223" name="Nuclear import of Mdm2_cyto_S166S186p R28" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_223">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_183" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8792" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_312"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_196"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_224" name="Phopshorylation of PIP2 by PI3K R43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_224">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_202" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_209" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_208" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8797" name="p8" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_328"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_208"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_225" name="Phosphorylation by ATM_p on Ser15 and Ser20 R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_225">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8806" name="k" value="3e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_226" name="Phosphorylation by ATM_p on Ser15 and Ser20 R18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_226">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_192" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8810" name="k" value="3e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_227" name="Synthesis of proCaspase R79" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_227">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_170" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8803" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_341"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_228" name="Translation of mdm2 R24" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8800" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_194"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_229" name="Translation of p21 mRNA R49" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_229">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_178" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8804" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_186"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_230" name="Translation of PTEN_mRNA R41" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_230">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_187" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8801" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_189"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_231" name="Translation of Wip mRNA R37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_231">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_188" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8799" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_188"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_232" name="Translation of Wip mRNA R38" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_232">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_199" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8802" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_199"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_233" name="Phosphorylation by ATM_p R5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_233">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_184" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_198" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8805" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_184"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_234" name="Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_234">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_201" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8798" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_235" name="Phosphorylation of Bad in BclXL:Bad complex R70" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_235">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_174" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_201" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7493" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_236" name="Phosphorylation of Bad_0 by AKT_p R74" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_236">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7490" name="k" value="3e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_237" name="Phosphorylation of Mdm2_cyt_0 by AKT_p R25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_237">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_196" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_201" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7489" name="k" value="1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_302"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_238" name="Phosphorylation of Rb1 by Cyclin_E  R55" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_238">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_181" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7485" name="k" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_239" name="Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_239">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_180" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7495" name="k" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_180"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_240" name="Synthesis induced by E2F1 R59" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_240">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_179" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7492" name="s9" value="30"/>
          <Constant key="Parameter_7494" name="M3" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_316"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_241" name="Synthesis of HIPK2 R7" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_182" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7487" name="v" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_342"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_242" name="Synthesis of p53_0p R9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7483" name="v" value="300"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_327"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_243" name="Synthesis R58" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_243">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_176" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7484" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_322"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_244" name="Transcription Mdm2 gene transcription R22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_244">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_194" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7488" name="s3" value="0.1"/>
          <Constant key="Parameter_7482" name="q0_mdm2" value="0.0001"/>
          <Constant key="Parameter_7481" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_7491" name="h" value="2"/>
          <Constant key="Parameter_7486" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_245" name="Transcription of Bax gene R62" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_245">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8843" name="s3" value="0.03"/>
          <Constant key="Parameter_8844" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_11018" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_11016" name="h" value="2"/>
          <Constant key="Parameter_10867" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_330"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_335"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_246" name="Transcription of p21 gene R47" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_186" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11042" name="s3" value="0.1"/>
          <Constant key="Parameter_11044" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_11038" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_11036" name="h" value="2"/>
          <Constant key="Parameter_10937" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_337"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_247" name="Transcription of PTEN gene R39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_247">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_189" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_193" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11054" name="s3" value="0.03"/>
          <Constant key="Parameter_11053" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_11052" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_11050" name="h" value="2"/>
          <Constant key="Parameter_11051" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_248" name="Transcription of Wip1 gene R35" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_248">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_188" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_191" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11055" name="s3" value="0.1"/>
          <Constant key="Parameter_11059" name="q0_mdm2" value="1e-05"/>
          <Constant key="Parameter_11057" name="q1_mdm2" value="3e-13"/>
          <Constant key="Parameter_11056" name="h" value="2"/>
          <Constant key="Parameter_11058" name="q2" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_249" name="Translation of Bax mRNA R64" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_168" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11063" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_185"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="t_Bax_mRNA is on" fireAtInitialTime="1" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_arrester],Reference=Concentration> > 18000
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t_Bax_mRNA]" targetKey="ModelValue_177">
            <Expression>
              0.00000000005
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="t_Bax_mRNA is off" fireAtInitialTime="1" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration> &lt; 18000
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t_Bax_mRNA]" targetKey="ModelValue_177">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Stop Irradiation" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time> >= 601
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[is_IR_switched_on]" targetKey="ModelValue_313">
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
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[L]" value="1.8066422279999999e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R]" value="1.204428152e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[flip]" value="6.0221407599999999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC8]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BAR]" value="6.0221407599999927e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3]" value="6.022140759999938e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bid]" value="2.4088563039999752e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC6]" value="6.022140759999938e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP]" value="6.0221407600000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Smac]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cytosolic Bcl-2]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bcl-2]" value="1.2044281519999876e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[L:R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[flip:R#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R#:pC8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C6:pC8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BAR:C8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apop]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:Bid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apop:XIAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Smac:XIAP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bcl2c:tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax:tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:Bcl2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M]" value="3.0110703800000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:M]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac_m]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:Smac_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC_m]" value="3.0110703800000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:CytoC_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC:Apaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC9]" value="6.0221407599999083e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax_(free)]" value="8.5820323542608e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Caspase]" value="8.5820925756684003e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proCaspase]" value="6.0221407599999584e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)]" value="6.1368625414779999e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_free]" value="9.2876152571935479e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex]" value="1.9998505700030801e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)]" value="5.1455338624113606e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)]" value="3.6644425417561727e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E (free)]" value="1.0242577447423099e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E:p21_complex]" value="6.6666904855427648e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p21_(free)]" value="7.8393819557375987e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[E2F1]" value="1.1356372380985103e+29" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex]" value="6.8790913901479873e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)]" value="1.8616785724056399e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[HIPK2]" value="1.1388530612643599e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated]" value="1.5628238150498792e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0]" value="6.022140759999962e+28" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax_mRNA]" value="2.0007117361317601e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p21_mRNA]" value="6.6690391204392005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PTEN]" value="6.6690391204392007e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Wip1 mRNA]" value="6.6690391204392005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PTEN mRNA]" value="2.0007117361317601e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p]" value="3.1734995605787201e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_arrester]" value="1.1835313235627981e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated]" value="6.5442001424843298e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_killer]" value="4.1843038428631998e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2 mRNA]" value="6.4754272950052004e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_0phosphorylated]" value="1.6463027302650001e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated]" value="4.6884654230088605e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_0phosphorylated]" value="2.6778653317491826e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated]" value="1.59018842266332e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Wip1]" value="2.2230130401464e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex]" value="2.7566662628063593e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated]" value="1.9379851179755837e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP3]" value="2.8575901005906267e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb_phosphorylated]" value="1.7192345283744633e+29" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_phosphorylated]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex]" value="8.5660839188855712e+27" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[DNA_double_strand_break]" value="1.7164185151336702e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_0]" value="4.0841556420243526e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PI3K_tot]" value="6.0221407599999549e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP2]" value="3.1645506594093305e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[ATM_0]" value="6.0221407440980551e+28" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_tot]" value="6.0221407599999364e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[ATM_tot]" value="6.0221407599999391e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_tot]" value="3.613284456e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_tot]" value="6.0221407599999479e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[E2F1_tot]" value="1.2044281519999901e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_tot]" value="1.2044281519999906e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP_tot]" value="6.0221407599999567e+28" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb_tot]" value="1.8066422280000001e+29" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_tot]" value="6.022140759999962e+28" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k1]" value="3.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k2]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k3]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_3]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k4]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_4]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k5]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_5]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k6]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_6]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc6]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k7]" value="2.9999999999999997e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_7]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k8]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_8]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k9]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_9]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc9]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k10]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_10]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc10]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k11]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_11]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k12]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_12]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc12]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k13]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_13]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k14]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_14]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k15]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_15]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k16]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_16]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k17]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_17]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k18]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_18]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k19]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_19]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc19]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k20]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_20]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc20]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k21]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_21]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc21]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k22]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_22]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k23]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_23]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc23]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k24]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_24]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k25]" value="5.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_25]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc25]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k26]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_26]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k27]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_27]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k28]" value="6.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_28]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc7]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[pC3 fraction]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[degraded C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[cPARP fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3]" value="9999.9999999998981" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[free C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[a1]" value="3e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[a2]" value="9.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b1]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b3]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b4]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b5]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d1]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[can_Caspase_make_DNA_DSB]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d10]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d6]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d7]" value="2.9999999999999999e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d8]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d9]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_due_to_IR]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_max]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d12]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d2]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d3]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_per_IR_Gy]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_RepairCplx_total]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g14]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g15]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g16]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g17]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g18]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g19]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g2]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g20]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g10]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g101]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g11]" value="9.9999999999999994e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g12]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g13]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g3]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g4]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[IR_Gy]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p10]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p11]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p12]" value="1.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p2]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p3]" value="2.9999999999999997e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p4]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p5]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g5]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g6]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g7]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g8]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g9]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h2]" value="1e-13" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[has_DNA_DSB_repair]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[i1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[is_IR_switched_on]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M2]" value="100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M3]" value="200000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p6]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p7]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_pten]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s10]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s2]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s4]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s6]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p8]" value="3e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p9]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_bax]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_mdm2]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_p21]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_pten]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_wip1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_bax]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_mdm2]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_p21]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_wip1]" value="2.9999999999999998e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[rep]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s7]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s8]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[time_days]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[tp2]" value="600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u3]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u5]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u6]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s9]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t_Bax_mRNA]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k1" value="3.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re2],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k1" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re9],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re9],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re10],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re11],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re11],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re12],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re13],ParameterGroup=Parameters,Parameter=k1" value="5.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re13],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re14],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re15],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re15],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re16],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re17],ParameterGroup=Parameters,Parameter=k1" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re17],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re18],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re19],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re19],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re20],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re21],ParameterGroup=Parameters,Parameter=k1" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re21],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=k1" value="6.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re23],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re23],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re24],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re24],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re25],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re26],ParameterGroup=Parameters,Parameter=k13" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re26],ParameterGroup=Parameters,Parameter=k_13" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=k14" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=k_14" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re27],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=k15" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=k_15" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re29],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=k17" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=k_17" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re30],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=k16" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=k_16" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re31],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=k18" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=k_18" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re32],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=k19" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=k_19" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re33],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re34],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=k21" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=k_21" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re35],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re36],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re37],ParameterGroup=Parameters,Parameter=k26" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k26],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re37],ParameterGroup=Parameters,Parameter=k_26" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_26],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=k20" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=k_20" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re38],ParameterGroup=Parameters,Parameter=v" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re39],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re40],ParameterGroup=Parameters,Parameter=k22" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re40],ParameterGroup=Parameters,Parameter=k_22" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re41],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re41],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re42],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[kc23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re43],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[re43],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[k_24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Activation of caspases by active (free) Bax R81]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Activation of caspases by active (free) Bax R81],ParameterGroup=Parameters,Parameter=k" value="3e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Activation_autoactivation of caspases R82]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Activation_autoactivation of caspases R82],ParameterGroup=Parameters,Parameter=a2" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Bad_p and 14-3-3 R78]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Bad_p and 14-3-3 R78],ParameterGroup=Parameters,Parameter=k" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Bax and BclXL R66]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Bax and BclXL R66],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of BclXL and Bad_0 R71]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of BclXL and Bad_0 R71],ParameterGroup=Parameters,Parameter=k1" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Cyclin_E and p21 R50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Cyclin_E and p21 R50],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Rb1 and E2F1 R54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Binding of Rb1 and E2F1 R54],ParameterGroup=Parameters,Parameter=k" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[b4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation induced by Mdm2_nuc_S166S186p and SIAH1 R8],ParameterGroup=Parameters,Parameter=g7" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of Bax in Bax:BclXL complex R69],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R67],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephoshorylation by Wip1 R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephoshorylation by Wip1 R3],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation R72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation R72],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phopshorylation at PIP3 R45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phopshorylation at PIP3 R45],ParameterGroup=Parameters,Parameter=p12" value="1.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phoshorylation due to IR R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=p1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phoshorylation due to IR R4],ParameterGroup=Parameters,Parameter=M1" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R14],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation at Ser46 by HIPK2 R16],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p at Ser395 R31],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of Bax mRNA R63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of Bax mRNA R63],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of caspases R83]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of caspases R83],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of p21 mRNA R48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of p21 mRNA R48],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of p21 R52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of p21 R52],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of proCaspase R80]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of proCaspase R80],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of PTEN R42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation of PTEN R42],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R36],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R40],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R60],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation R61],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation Ser395p-dependent R34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation Ser395p-dependent R34],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R15],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R19],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=g11" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R23],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R27],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R29],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R30],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous R33],ParameterGroup=Parameters,Parameter=k1" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=g101" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g101],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=g11" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontanuous and induced by Mdm2_nuc_S166S186p  R12],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation and dissociation of Bad_p in Bad:14_3_3 complex R75],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation at Ser166 and 186 R26],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of AKT R46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of AKT R46],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of PIP3 by PTENR44],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999999e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53],ParameterGroup=Parameters,Parameter=d12" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Rb1 at S567 R53],ParameterGroup=Parameters,Parameter=M2" value="100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 R32],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser46 by Wip1 R13],ParameterGroup=Parameters,Parameter=k" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of SIAH1_p R6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of SIAH1_p R6],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation spontaneous of p53_arrester R11],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Bad:14-3-3 complex R76],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Bax:BclXL complex R65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Bax:BclXL complex R65],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of BclXL:Bad complex R68]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of BclXL:Bad complex R68],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of BclXL:Bad complex R73]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of BclXL:Bad complex R73],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of complex Cyclin_E:p21 R51],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dissociation of Rb1:E2F1 complex R56],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[u5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=h1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=DNA_DSB_DUE_to_IR" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_due_to_IR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=is_IR_switched_on" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[is_IR_switched_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=h2" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA damage R1],ParameterGroup=Parameters,Parameter=DNA_DSB_max" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA Repair R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA Repair R2],ParameterGroup=Parameters,Parameter=rep" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[rep],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[DNA Repair R2],ParameterGroup=Parameters,Parameter=DNA_DSB_RepairCplx_total" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_RepairCplx_total],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Nuclear import of Mdm2_cyto_S166S186p R28],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[i1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phopshorylation of PIP2 by PI3K R43],ParameterGroup=Parameters,Parameter=p8" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R10],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p on Ser15 and Ser20 R18],ParameterGroup=Parameters,Parameter=k" value="2.9999999999999997e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of proCaspase R79]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of proCaspase R79],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of mdm2 R24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of mdm2 R24],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of p21 mRNA R49]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of p21 mRNA R49],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of PTEN_mRNA R41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of PTEN_mRNA R41],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Wip mRNA R37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Wip mRNA R37],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Wip mRNA R38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Wip mRNA R38],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[g8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation by ATM_p R5],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex and complex Dissociation R77],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad in BclXL:Bad complex R70],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Bad_0 by AKT_p R74],ParameterGroup=Parameters,Parameter=k" value="3e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Mdm2_cyt_0 by AKT_p R25],ParameterGroup=Parameters,Parameter=k" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Rb1 by Cyclin_E  R55],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Phosphorylation of Rb1 in Rb1:E2F1 complex by Cyclin_ER57],ParameterGroup=Parameters,Parameter=k" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[p10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis induced by E2F1 R59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis induced by E2F1 R59],ParameterGroup=Parameters,Parameter=s9" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis induced by E2F1 R59],ParameterGroup=Parameters,Parameter=M3" value="200000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[M3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of HIPK2 R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of HIPK2 R7],ParameterGroup=Parameters,Parameter=v" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of p53_0p R9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis of p53_0p R9],ParameterGroup=Parameters,Parameter=v" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis R58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Synthesis R58],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q0_mdm2" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_mdm2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_mdm2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription Mdm2 gene transcription R22],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=s3" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_bax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_bax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Bax gene R62],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_p21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_p21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of p21 gene R47],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=s3" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_pten],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_pten],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of PTEN gene R39],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=s3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[s1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q0_mdm2" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q0_wip1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q1_mdm2" value="2.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q1_wip1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Transcription of Wip1 gene R35],ParameterGroup=Parameters,Parameter=q2" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[q2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Bax mRNA R64]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Translation of Bax mRNA R64],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[t4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_174"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_166"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_176"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_154"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_170"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_183"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_168"/>
      <StateTemplateVariable objectReference="Metabolite_178"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_190"/>
      <StateTemplateVariable objectReference="Metabolite_192"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_196"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_182"/>
      <StateTemplateVariable objectReference="Metabolite_184"/>
      <StateTemplateVariable objectReference="Metabolite_185"/>
      <StateTemplateVariable objectReference="Metabolite_186"/>
      <StateTemplateVariable objectReference="Metabolite_187"/>
      <StateTemplateVariable objectReference="Metabolite_188"/>
      <StateTemplateVariable objectReference="Metabolite_189"/>
      <StateTemplateVariable objectReference="Metabolite_194"/>
      <StateTemplateVariable objectReference="Metabolite_198"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_202"/>
      <StateTemplateVariable objectReference="Metabolite_206"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_180"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_160"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_164"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_150"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_162"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_158"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_152"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_156"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_172"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_204"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_210"/>
      <StateTemplateVariable objectReference="Metabolite_200"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_272"/>
      <StateTemplateVariable objectReference="ModelValue_310"/>
      <StateTemplateVariable objectReference="ModelValue_340"/>
      <StateTemplateVariable objectReference="ModelValue_344"/>
      <StateTemplateVariable objectReference="Metabolite_214"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_216"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_218"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_212"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_208"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_237"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
      <StateTemplateVariable objectReference="ModelValue_263"/>
      <StateTemplateVariable objectReference="ModelValue_264"/>
      <StateTemplateVariable objectReference="ModelValue_265"/>
      <StateTemplateVariable objectReference="ModelValue_266"/>
      <StateTemplateVariable objectReference="ModelValue_267"/>
      <StateTemplateVariable objectReference="ModelValue_268"/>
      <StateTemplateVariable objectReference="ModelValue_269"/>
      <StateTemplateVariable objectReference="ModelValue_270"/>
      <StateTemplateVariable objectReference="ModelValue_271"/>
      <StateTemplateVariable objectReference="ModelValue_273"/>
      <StateTemplateVariable objectReference="ModelValue_274"/>
      <StateTemplateVariable objectReference="ModelValue_275"/>
      <StateTemplateVariable objectReference="ModelValue_276"/>
      <StateTemplateVariable objectReference="ModelValue_277"/>
      <StateTemplateVariable objectReference="ModelValue_278"/>
      <StateTemplateVariable objectReference="ModelValue_279"/>
      <StateTemplateVariable objectReference="ModelValue_280"/>
      <StateTemplateVariable objectReference="ModelValue_281"/>
      <StateTemplateVariable objectReference="ModelValue_282"/>
      <StateTemplateVariable objectReference="ModelValue_283"/>
      <StateTemplateVariable objectReference="ModelValue_284"/>
      <StateTemplateVariable objectReference="ModelValue_285"/>
      <StateTemplateVariable objectReference="ModelValue_286"/>
      <StateTemplateVariable objectReference="ModelValue_287"/>
      <StateTemplateVariable objectReference="ModelValue_288"/>
      <StateTemplateVariable objectReference="ModelValue_289"/>
      <StateTemplateVariable objectReference="ModelValue_290"/>
      <StateTemplateVariable objectReference="ModelValue_291"/>
      <StateTemplateVariable objectReference="ModelValue_292"/>
      <StateTemplateVariable objectReference="ModelValue_293"/>
      <StateTemplateVariable objectReference="ModelValue_294"/>
      <StateTemplateVariable objectReference="ModelValue_295"/>
      <StateTemplateVariable objectReference="ModelValue_296"/>
      <StateTemplateVariable objectReference="ModelValue_297"/>
      <StateTemplateVariable objectReference="ModelValue_298"/>
      <StateTemplateVariable objectReference="ModelValue_299"/>
      <StateTemplateVariable objectReference="ModelValue_300"/>
      <StateTemplateVariable objectReference="ModelValue_301"/>
      <StateTemplateVariable objectReference="ModelValue_302"/>
      <StateTemplateVariable objectReference="ModelValue_303"/>
      <StateTemplateVariable objectReference="ModelValue_304"/>
      <StateTemplateVariable objectReference="ModelValue_305"/>
      <StateTemplateVariable objectReference="ModelValue_306"/>
      <StateTemplateVariable objectReference="ModelValue_307"/>
      <StateTemplateVariable objectReference="ModelValue_308"/>
      <StateTemplateVariable objectReference="ModelValue_309"/>
      <StateTemplateVariable objectReference="ModelValue_311"/>
      <StateTemplateVariable objectReference="ModelValue_312"/>
      <StateTemplateVariable objectReference="ModelValue_313"/>
      <StateTemplateVariable objectReference="ModelValue_314"/>
      <StateTemplateVariable objectReference="ModelValue_315"/>
      <StateTemplateVariable objectReference="ModelValue_316"/>
      <StateTemplateVariable objectReference="ModelValue_317"/>
      <StateTemplateVariable objectReference="ModelValue_318"/>
      <StateTemplateVariable objectReference="ModelValue_319"/>
      <StateTemplateVariable objectReference="ModelValue_320"/>
      <StateTemplateVariable objectReference="ModelValue_321"/>
      <StateTemplateVariable objectReference="ModelValue_322"/>
      <StateTemplateVariable objectReference="ModelValue_323"/>
      <StateTemplateVariable objectReference="ModelValue_324"/>
      <StateTemplateVariable objectReference="ModelValue_325"/>
      <StateTemplateVariable objectReference="ModelValue_326"/>
      <StateTemplateVariable objectReference="ModelValue_327"/>
      <StateTemplateVariable objectReference="ModelValue_328"/>
      <StateTemplateVariable objectReference="ModelValue_329"/>
      <StateTemplateVariable objectReference="ModelValue_330"/>
      <StateTemplateVariable objectReference="ModelValue_331"/>
      <StateTemplateVariable objectReference="ModelValue_332"/>
      <StateTemplateVariable objectReference="ModelValue_333"/>
      <StateTemplateVariable objectReference="ModelValue_334"/>
      <StateTemplateVariable objectReference="ModelValue_335"/>
      <StateTemplateVariable objectReference="ModelValue_336"/>
      <StateTemplateVariable objectReference="ModelValue_337"/>
      <StateTemplateVariable objectReference="ModelValue_338"/>
      <StateTemplateVariable objectReference="ModelValue_339"/>
      <StateTemplateVariable objectReference="ModelValue_341"/>
      <StateTemplateVariable objectReference="ModelValue_342"/>
      <StateTemplateVariable objectReference="ModelValue_343"/>
      <StateTemplateVariable objectReference="ModelValue_345"/>
      <StateTemplateVariable objectReference="ModelValue_346"/>
      <StateTemplateVariable objectReference="ModelValue_347"/>
      <StateTemplateVariable objectReference="ModelValue_348"/>
      <StateTemplateVariable objectReference="ModelValue_349"/>
      <StateTemplateVariable objectReference="ModelValue_350"/>
      <StateTemplateVariable objectReference="ModelValue_351"/>
      <StateTemplateVariable objectReference="ModelValue_352"/>
      <StateTemplateVariable objectReference="ModelValue_353"/>
      <StateTemplateVariable objectReference="ModelValue_354"/>
      <StateTemplateVariable objectReference="ModelValue_355"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 5.1455338624113606e+28 2.6778653317491826e+28 0 0 6.1368625414779999e+22 1.0242577447423099e+29 4.1843038428631998e+19 0 3.6644425417561727e+22 6.0221407599999584e+28 1.8616785724056399e+27 1.5628238150498792e+28 1.6463027302650001e+27 0 0 0 6.0221407599999083e+28 1.1835313235627981e+21 8.5820323542608e+22 7.8393819557375987e+22 0 3.1734995605787201e+20 6.5442001424843298e+26 0 4.6884654230088605e+26 1.2044281519999876e+28 1.1388530612643599e+28 6.022140759999962e+28 2.0007117361317601e+23 6.6690391204392005e+23 6.6690391204392007e+26 6.6690391204392005e+23 2.0007117361317601e+23 6.4754272950052004e+24 1.59018842266332e+20 2.2230130401464e+26 1.9379851179755837e+28 2.8575901005906267e+28 1.7164185151336702e+19 8.5820925756684003e+21 6.8790913901479873e+27 0 0 6.6666904855427648e+26 0 6.022140759999938e+27 0 0 0 1.2044281519999876e+28 0 1.9998505700030801e+26 0 0 0 0 0 0 6.0221407599999927e+26 0 0 0 6.0221407600000001e+29 6.0221407599999083e+28 0 0 6.0221407599999083e+28 6.0221407599999083e+28 0 0 0 1.8066422279999999e+27 2.4088563039999752e+28 3.0110703800000001e+29 0 0 0 6.022140759999938e+27 0 6.0221407599999083e+28 0 0 3.0110703800000001e+29 6.0221407599999999e+25 0 0 0 1.204428152e+26 1.2044281519999876e+28 9.2876152571935479e+28 1.1356372380985103e+29 1.7192345283744633e+29 0 8.5660839188855712e+27 3.1645506594093305e+28 6.0221407440980551e+28 2.7566662628063593e+28 4.0841556420243526e+28 1 0 0 0 9999.9999999998981 0 0 1e-13 0.001 0 6.0221407599999479e+28 1.2044281519999901e+29 1.2044281519999906e+29 6.0221407599999567e+28 1.8066422280000001e+29 6.022140759999962e+28 6.0221407599999364e+28 6.0221407599999391e+28 3.613284456e+28 6.0221407599999549e+28 1 1 3.9999999999999998e-07 0.001 1.0000000000000001e-05 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 1 2.9999999999999997e-08 0.001 1.9999999999999999e-06 0.001 0.10000000000000001 9.9999999999999995e-07 0.01 1 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 0.01 0.01 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 1.9999999999999999e-06 0.001 10 1.9999999999999999e-06 0.001 10 0.01 0.01 4.9999999999999998e-07 0.001 1 4.9999999999999998e-08 0.001 5.0000000000000001e-09 0.001 1 0.01 0.01 1.9999999999999999e-06 0.001 6.9999999999999999e-06 0.001 1 0.070000000000000007 3e-10 9.9999999999999998e-13 3.0000000000000001e-05 0.0030000000000000001 0.0030000000000000001 1.0000000000000001e-05 1.0000000000000001e-05 1e-08 1 0.0001 1e-10 1e-10 0.0001 1e-10 2.9999999999999999e-07 0.0001 3.0000000000000001e-05 1000000 10000 3.0000000000000001e-05 0.0001 10 20 0.0001 3.0000000000000001e-05 0.0001 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.00029999999999999997 0.0001 1.0000000000000001e-05 0.00029999999999999997 1.0000000000000001e-05 9.9999999999999994e-12 1e-13 1e-13 0.00029999999999999997 0.00029999999999999997 0 3.0000000000000001e-06 1e-10 1.0000000000000001e-09 1e-08 2.9999999999999997e-08 1e-10 1e-08 0.00029999999999999997 3.0000000000000001e-05 1e-13 0.00029999999999999997 0.0001 2 9.9999999999999995e-07 1 0.001 1 5 100000 200000 0.00029999999999999997 1e-08 3e-09 2.9999999999999998e-13 0.10000000000000001 3 0.029999999999999999 0.10000000000000001 0.029999999999999999 0.10000000000000001 300 3e-09 3.0000000000000001e-06 1.0000000000000001e-05 0.0001 1.0000000000000001e-05 1.0000000000000001e-05 1.0000000000000001e-05 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 2.9999999999999998e-13 0.0030000000000000001 30 30 0.10000000000000001 600 0.001 0.001 0.001 0.0001 0.0001 30 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0 
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[L],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[flip],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC8],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp8],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp6],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BAR],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bid],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[tBid],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC6],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Smac],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cytosolic Bcl-2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bcl-2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[L:R],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[flip:R#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[R#:pC8],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C6:pC8],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BAR:C8],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apop],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:Bid],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apop:XIAP],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Smac:XIAP],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bcl2c:tBid],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax:tBid],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm:Bcl2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2:Bcl2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:Bcl2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax4:M],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac_m],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:Smac_m],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac released],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC_m],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:CytoC_m],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC released],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC:Apaf],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC9],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Caspase],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proCaspase],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_phosphorylated_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Fourteen33_free],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax:BclXL_complex],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bad_0_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E (free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Cyclin_E:p21_complex],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p21_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[E2F1],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0:E2F1 complex],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb1_0_(free)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[HIPK2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_0],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax_mRNA],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p21_mRNA],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PTEN],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Wip1 mRNA],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PTEN mRNA],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186p_S395p],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_arrester],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2 mRNA],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_0phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_cyt_S166S186phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_0phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[ATM_phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Wip1],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bad_phosphorylated_Fourteen33_complex],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[AKT_phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP3],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Rb_phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[SIAH1_phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BclXL_Bad_complex],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[DNA_double_strand_break],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[AKT_0],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PI3K_tot],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PIP2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[ATM_0],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[pC3 fraction],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[C3 fraction],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[degraded C3 fraction],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[cPARP fraction],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[free C3 fraction],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[DNA_DSB_due_to_IR],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[h2],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[rep],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[time_days],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Caspase],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apop],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Mdm2_nuc_S166S186phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Wip1],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_S46phosphorylated],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[p53_killer],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Degradation spontaneous and induced by Mdm2_nuc_S166S186p R20],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation at Ser46 by Wip1 R17],Reference=Flux"/>
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
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Reactions[Dephosphorylation of Ser15 and Ser20 R21],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000220.xml">
    <SBMLMap SBMLid="Apaf" COPASIkey="Metabolite_162"/>
    <SBMLMap SBMLid="Apaf_hash" COPASIkey="Metabolite_164"/>
    <SBMLMap SBMLid="Apop" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="Apop_XIAP" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="BAR" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="BAR_C8" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="Bax" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="Bax2" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="Bax2_Bcl2" COPASIkey="Metabolite_150"/>
    <SBMLMap SBMLid="Bax4" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="Bax4_Bcl2" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="Bax4_M" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="Bax_hash" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="Bax_tBid" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="Baxm" COPASIkey="Metabolite_166"/>
    <SBMLMap SBMLid="Baxm_Bcl2" COPASIkey="Metabolite_148"/>
    <SBMLMap SBMLid="Bcl2" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="Bcl2c" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="Bcl2c_tBid" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="Bid" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="C3" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="C3_UB_frac" COPASIkey="ModelValue_251"/>
    <SBMLMap SBMLid="C3_Ub" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="C3_frac" COPASIkey="ModelValue_250"/>
    <SBMLMap SBMLid="C3_pC6" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="C3_tot" COPASIkey="ModelValue_253"/>
    <SBMLMap SBMLid="C6" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="C6_pC8" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="C8" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="C8_Bid" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="C8_pC3" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="CPARP" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="CytoC" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="CytoC_Apaf" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="CytoCm" COPASIkey="Metabolite_158"/>
    <SBMLMap SBMLid="CytoCr" COPASIkey="Metabolite_160"/>
    <SBMLMap SBMLid="L" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="L_R" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_152"/>
    <SBMLMap SBMLid="M_hash" COPASIkey="Metabolite_154"/>
    <SBMLMap SBMLid="M_hash_CytoCm" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="M_hash_Smacm" COPASIkey="Metabolite_156"/>
    <SBMLMap SBMLid="PARP" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="PARP_C3" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="R_hash" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="R_hash_pC8" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="Smac" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="Smac_XIAP" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="Smacm" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="Smacr" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="XIAP" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="XIAP_C3" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="cPARP_frac" COPASIkey="ModelValue_252"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="fC3_fract" COPASIkey="ModelValue_254"/>
    <SBMLMap SBMLid="flip" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="flip_R_hash" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_214"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_216"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_218"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_220"/>
    <SBMLMap SBMLid="k19" COPASIkey="ModelValue_222"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_225"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_228"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_231"/>
    <SBMLMap SBMLid="k23" COPASIkey="ModelValue_233"/>
    <SBMLMap SBMLid="k24" COPASIkey="ModelValue_236"/>
    <SBMLMap SBMLid="k25" COPASIkey="ModelValue_238"/>
    <SBMLMap SBMLid="k26" COPASIkey="ModelValue_241"/>
    <SBMLMap SBMLid="k27" COPASIkey="ModelValue_243"/>
    <SBMLMap SBMLid="k28" COPASIkey="ModelValue_245"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="k_1" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="k_10" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="k_11" COPASIkey="ModelValue_206"/>
    <SBMLMap SBMLid="k_12" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="k_13" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="k_14" COPASIkey="ModelValue_213"/>
    <SBMLMap SBMLid="k_15" COPASIkey="ModelValue_215"/>
    <SBMLMap SBMLid="k_16" COPASIkey="ModelValue_217"/>
    <SBMLMap SBMLid="k_17" COPASIkey="ModelValue_219"/>
    <SBMLMap SBMLid="k_18" COPASIkey="ModelValue_221"/>
    <SBMLMap SBMLid="k_19" COPASIkey="ModelValue_223"/>
    <SBMLMap SBMLid="k_2" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="k_20" COPASIkey="ModelValue_226"/>
    <SBMLMap SBMLid="k_21" COPASIkey="ModelValue_229"/>
    <SBMLMap SBMLid="k_22" COPASIkey="ModelValue_232"/>
    <SBMLMap SBMLid="k_23" COPASIkey="ModelValue_234"/>
    <SBMLMap SBMLid="k_24" COPASIkey="ModelValue_237"/>
    <SBMLMap SBMLid="k_25" COPASIkey="ModelValue_239"/>
    <SBMLMap SBMLid="k_26" COPASIkey="ModelValue_242"/>
    <SBMLMap SBMLid="k_27" COPASIkey="ModelValue_244"/>
    <SBMLMap SBMLid="k_28" COPASIkey="ModelValue_246"/>
    <SBMLMap SBMLid="k_3" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="k_4" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="k_5" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="k_6" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="k_7" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="k_8" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="k_9" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="kc1" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="kc10" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="kc12" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="kc19" COPASIkey="ModelValue_224"/>
    <SBMLMap SBMLid="kc20" COPASIkey="ModelValue_227"/>
    <SBMLMap SBMLid="kc21" COPASIkey="ModelValue_230"/>
    <SBMLMap SBMLid="kc23" COPASIkey="ModelValue_235"/>
    <SBMLMap SBMLid="kc25" COPASIkey="ModelValue_240"/>
    <SBMLMap SBMLid="kc3" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="kc5" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="kc6" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="kc7" COPASIkey="ModelValue_247"/>
    <SBMLMap SBMLid="kc8" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="kc9" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="mitochondrion" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="pC3" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="pC3_Apop" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="pC3_frac" COPASIkey="ModelValue_249"/>
    <SBMLMap SBMLid="pC6" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="pC8" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="pC9" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="re19" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_152"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_153"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_154"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_155"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_156"/>
    <SBMLMap SBMLid="re34" COPASIkey="Reaction_157"/>
    <SBMLMap SBMLid="re35" COPASIkey="Reaction_158"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_159"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_160"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_161"/>
    <SBMLMap SBMLid="re39" COPASIkey="Reaction_162"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="re40" COPASIkey="Reaction_163"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_164"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_165"/>
    <SBMLMap SBMLid="re43" COPASIkey="Reaction_166"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="tBid" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_248"/>
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
