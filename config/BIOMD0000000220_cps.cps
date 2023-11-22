<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2023-11-17T15:10:31Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="36" versionDevel="260" copasiSourcesModified="0">
  <ListOfFunctions>
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cell*(Bax_hash*k13-Baxm*k_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="Bax_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="Baxm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_347" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_348" name="k13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="k_13" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re27" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Bcl2*k14/v-Baxm_Bcl2*k_14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="Baxm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="Baxm_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_358" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_359" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="k_14" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for re29" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Baxm*Baxm*k15/v-Bax2*k_15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="Bax2" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_368" name="Baxm" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="k15" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="k_15" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re30" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Bax2*Bax2*k17/v-Bax4*k_17
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="Bax4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_379" name="k17" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="k_17" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="v" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re31" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax2*k16/v-Bax2_Bcl2*k_16
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="Bax2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="Bax2_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_390" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="k16" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="k_16" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re32" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Bcl2*Bax4*k18/v-Bax4_Bcl2*k_18
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_400" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="Bax4_Bcl2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_402" name="Bcl2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_403" name="k18" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="k_18" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for re33" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Bax4*M*k19/v-Bax4_M*k_19
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="Bax4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_413" name="Bax4_M" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_414" name="M" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="k19" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="k_19" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re35" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        M_hash*Smacm*k21/v-M_hash_Smacm*k_21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="M_hash" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="M_hash_Smacm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_428" name="Smacm" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="k21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="k_21" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for re37" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cell*(Smacr*k26-Smac*k_26)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="Smac" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_440" name="Smacr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_442" name="k26" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="k_26" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for re38" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        M_hash*CytoCm*k20/v-M_hash_CytoCm*k_20
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="CytoCm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_451" name="M_hash" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="M_hash_CytoCm" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="k20" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="k_20" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="v" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for re40" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cell*(CytoCr*k22-CytoC*k_22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_463" name="CytoC" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_464" name="CytoCr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_465" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_466" name="k22" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="k_22" order="4" role="constant"/>
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
    <p>This the model used in the article:      <br/>
    <strong>Quantitative analysis of pathways controlling extrinsic apoptosis in single cells.</strong>
    <br/>
          Albeck JG, Burke JM, Aldridge BB, Zhang M, Lauffenburger DA, Sorger PK.      <em>Mol Cell.</em>
          2008 Apr 11;30(1):11-25.
      PMID:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/18406323">18406323</a>
          , doi:      <a href="http://dx.doi.org/10.1016/j.molcel.2008.02.012">10.1016/j.molcel.2008.02.012</a>
    <br/>
    <strong>Abstract:</strong>
    <br/>
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
	of caspase regulatory networks and their failure modes.      <br/>
          The mitochondrial compartment is just added as a logical partition and its volume is not used in the mathematical formulas, to stick closer to the expressions used in the matlab files distributed with the original publication. There only the rate constants for bimolecular reactions are adapted by division by      <em>v</em>
          , the ration of the volumes of the mitochondrial compartment and the total cell.      <br/>
          For BCL2 overexpression in figure 5, the initial BCL2 amount was increased by a factor 12 to 2.4*10      <sup>5</sup>
          . For siRNA downregulation of XIAP its amount was multiplied by  0.13 to 1.3*10      <sup>4</sup>
          .      </p>
    <br/>
    <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
    <br/>
    <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>

    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:modelVersion xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">4.0</celldesigner:modelVersion><celldesigner:modelDisplay xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" sizeX="2400" sizeY="2400"/><celldesigner:listOfIncludedSpecies xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:species id="s5" name="R">
    <celldesigner:notes>
      <html xmlns="http://www.w3.org/1999/xhtml">
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
        <body/>
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
    <celldesigner:bounds h="1197.0" w="639.0" x="1323.0" y="768.0"/>
    <celldesigner:namePoint x="1788.5" y="1007.5"/>
    <celldesigner:doubleLine innerWidth="1.0" outerWidth="2.0" thickness="3.0"/>
    <celldesigner:paint color="ff010101" scheme="Color"/>
  </celldesigner:compartmentAlias>
</celldesigner:listOfCompartmentAliases><celldesigner:listOfComplexSpeciesAliases xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:complexSpeciesAlias id="csa1" species="L_R">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="140.0" w="106.0" x="539.0" y="95.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="140.0" width="106.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa2" species="R_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="132.0" w="100.0" x="727.0" y="97.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="132.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa3" species="flip_R_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="174.0" w="100.0" x="1053.0" y="79.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="174.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa4" species="R_hash_pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="176.0" w="98.0" x="614.0" y="331.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="176.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa5" species="C6_pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="353.0" y="471.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa6" species="BAR_C8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="116.0" w="92.0" x="731.0" y="649.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="116.0" width="92.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa7" species="C8_pC3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="114.0" w="98.0" x="393.0" y="795.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="114.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa8" species="pC3_Apop">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="166.0" w="98.0" x="620.0" y="935.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="166.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa9" species="Apop">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1017.0" y="821.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa10" species="C8_Bid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="118.0" w="98.0" x="1041.0" y="413.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="118.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa11" species="C3_pC6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="45.0" y="1184.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa12" species="XIAP_C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="673.0" y="1309.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa13" species="PARP_C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="359.0" y="1421.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa14" species="Apop_XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="158.0" w="106.0" x="896.0" y="1009.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="158.0" width="106.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa15" species="Smac_XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="735.0" y="1707.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa16" species="Bcl2c_tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1265.0" y="553.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa17" species="Bax_tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1160.0" y="850.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa18" species="Baxm_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="120.0" w="100.0" x="1789.0" y="791.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="466.0" y="23.0"/>
      <celldesigner:boxSize height="120.0" width="100.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa19" species="Bax2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="102.0" w="98.0" x="1479.0" y="999.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="156.0" y="231.0"/>
      <celldesigner:boxSize height="102.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa20" species="Bax2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="102.0" w="98.0" x="1373.0" y="1103.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="335.0"/>
      <celldesigner:boxSize height="102.0" width="98.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa21" species="Bax4">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="156.0" x="1451.0" y="1225.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="128.0" y="457.0"/>
      <celldesigner:boxSize height="96.0" width="156.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa22" species="Bax2_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="140.0" w="102.0" x="1797.0" y="966.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="474.0" y="198.0"/>
      <celldesigner:boxSize height="140.0" width="102.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa23" species="Bax4_Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="142.0" w="154.0" x="1753.0" y="1202.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="430.0" y="434.0"/>
      <celldesigner:boxSize height="142.0" width="154.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa24" species="Bax4_M">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="122.0" w="150.0" x="1603.0" y="1463.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="280.0" y="695.0"/>
      <celldesigner:boxSize height="122.0" width="150.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa25" species="M_hash_Smacm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="90.0" x="1565.0" y="1841.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="242.0" y="1073.0"/>
      <celldesigner:boxSize height="96.0" width="90.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias compartmentAlias="ca1" id="csa26" species="M_hash_CytoCm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="96.0" w="92.0" x="1337.0" y="1554.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="14.0" y="786.0"/>
      <celldesigner:boxSize height="96.0" width="92.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
  <celldesigner:complexSpeciesAlias id="csa27" species="CytoC_Apaf">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="112.0" w="86.0" x="1025.0" y="1440.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:backupSize h="0.0" w="0.0"/>
    <celldesigner:backupView state="none"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="112.0" width="86.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="2.0"/>
      <celldesigner:paint color="fff7f7f7" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:complexSpeciesAlias>
</celldesigner:listOfComplexSpeciesAliases><celldesigner:listOfSpeciesAliases xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:speciesAlias id="sa1" species="L">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="346.0" y="109.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa2" species="R">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="350.0" y="177.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="50.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffffffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa3" species="flip">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="915.0" y="79.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa4" species="pC8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="475.0" y="334.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa5" species="C8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="547.0" y="621.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa6" species="C6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="213.0" y="335.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa7" species="BAR">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="625.0" y="753.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa8" species="pC3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="621.0" y="857.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa9" species="C3">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="545.0" y="1215.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa10" species="Bid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="827.0" y="455.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa11" species="tBid">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1053.0" y="695.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa12" species="pC6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="399.0" y="1137.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa13" species="XIAP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="829.0" y="1217.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa14" species="C3_Ub">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="687.0" y="1507.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa15" species="PARP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="265.0" y="1335.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa16" species="CPARP">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="547.0" y="1463.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa17" species="Smac">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="967.0" y="1828.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa18" species="Bcl2c">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1159.0" y="555.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa19" species="Bax">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="996.0" y="768.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa20" species="Bax_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1489.0" y="695.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa21" species="Baxm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1489.0" y="862.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="166.0" y="94.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa22" species="Bcl2">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1603.0" y="923.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="280.0" y="155.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa1" id="sa23" species="s5">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="549.75" y="159.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.75" y="64.0"/>
      <celldesigner:boxSize height="50.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffffffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa1" id="sa24" species="s4">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="549.75" y="109.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.75" y="14.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa2" id="sa25" species="s8">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="108.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="11.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa2" id="sa26" species="s6">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="736.0" y="156.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0"/>
      <celldesigner:boxSize height="50.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffffffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa27" species="s12">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1060.0" y="85.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa28" species="s10">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="1062.0" y="133.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="54.0"/>
      <celldesigner:boxSize height="50.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffffffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa3" id="sa29" species="s13">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1064.0" y="189.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="110.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa30" species="s16">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="621.0" y="342.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="11.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa31" species="s17">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="50.0" w="80.0" x="623.0" y="390.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0"/>
      <celldesigner:boxSize height="50.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffffffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa4" id="sa32" species="s18">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="622.0" y="445.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="8.0" y="114.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa5" id="sa33" species="s22">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="360.0" y="527.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="56.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa5" id="sa34" species="s23">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="364.0" y="481.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="10.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa6" id="sa35" species="s27">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="655.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa6" id="sa36" species="s26">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="734.0" y="701.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="52.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa7" id="sa37" species="s30">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="398.0" y="845.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="50.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa7" id="sa38" species="s31">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="398.0" y="801.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa39" species="s42">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="626.0" y="997.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="62.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa40" species="s43">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="626.0" y="1043.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="108.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa8" id="sa41" species="s44">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="624.0" y="947.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="4.0" y="12.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa9" id="sa42" species="s38">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1023.0" y="837.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="16.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa9" id="sa43" species="s39">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1023.0" y="883.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="6.0" y="62.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa10" id="sa44" species="s35">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1048.0" y="423.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="10.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa10" id="sa45" species="s36">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1050.0" y="469.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="56.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa11" id="sa46" species="s49">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="52.0" y="1196.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="12.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa11" id="sa47" species="s48">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="54.0" y="1240.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="56.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa12" id="sa48" species="s52">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="680.0" y="1323.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="14.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa12" id="sa49" species="s53">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="678.0" y="1367.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="58.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa13" id="sa50" species="s57">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="366.0" y="1429.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="8.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa13" id="sa51" species="s58">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="366.0" y="1479.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="58.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa52" species="s64">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1058.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="49.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa53" species="s65">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1102.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="93.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa14" id="sa54" species="s67">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="907.0" y="1013.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="4.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa15" id="sa55" species="s70">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="744.0" y="1717.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="10.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa15" id="sa56" species="s71">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="746.0" y="1763.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="56.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa16" id="sa57" species="s74">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1274.0" y="562.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="9.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa16" id="sa58" species="s75">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1274.0" y="612.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="59.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa17" id="sa59" species="s79">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1169.0" y="855.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa17" id="sa60" species="s78">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1170.0" y="903.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="10.0" y="53.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa18" id="sa61" species="s84">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1796.0" y="800.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="9.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa18" id="sa62" species="s85">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1796.0" y="844.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="53.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa19" id="sa63" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1480.0" y="1005.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="1.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa19" id="sa64" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1486.0" y="1029.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="30.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa65" species="Baxm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1392.0" y="934.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="69.0" y="166.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa20" id="sa66" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1374.0" y="1109.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="1.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa20" id="sa67" species="s130">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1386.0" y="1135.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="13.0" y="32.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa68" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1460.0" y="1230.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa69" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1472.0" y="1256.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="21.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa70" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1518.0" y="1256.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="67.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa21" id="sa71" species="s131">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1506.0" y="1230.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="55.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa72" species="s132">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1802.0" y="971.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa73" species="s132">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1814.0" y="997.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="17.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa22" id="sa74" species="s87">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1806.0" y="1042.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="9.0" y="76.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa75" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1807.0" y="1207.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="54.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa76" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1819.0" y="1233.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="66.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa77" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1773.0" y="1233.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="20.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa78" species="s133">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1761.0" y="1207.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="8.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa23" id="sa79" species="s90">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1792.0" y="1278.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="39.0" y="76.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa80" species="M">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1438.0" y="1399.5"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="115.0" y="631.5"/>
      <celldesigner:boxSize height="25.0" width="70.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="7fcccccc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa81" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1665.0" y="1494.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="62.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa82" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1653.0" y="1468.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa83" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1619.0" y="1494.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="16.0" y="31.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa84" species="s134">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1607.0" y="1468.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="4.0" y="5.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa24" id="sa85" species="s94">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1646.0" y="1539.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="43.0" y="76.0"/>
      <celldesigner:boxSize height="25.0" width="70.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="7fcccccc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa86" species="M_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1643.0" y="1733.5"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="320.0" y="965.5"/>
      <celldesigner:boxSize height="25.0" width="70.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="7fcccccc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa87" species="Smacm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1792.0" y="1774.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="469.0" y="1006.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa25" id="sa88" species="s98">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1572.0" y="1891.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="50.0"/>
      <celldesigner:boxSize height="25.0" width="70.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="7fcccccc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa25" id="sa89" species="s99">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1570.0" y="1849.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="5.0" y="8.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa90" species="Smacr">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1373.0" y="1832.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="50.0" y="1064.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa91" species="CytoCm">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1488.0" y="1485.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="165.0" y="717.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa26" id="sa92" species="s103">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1344.0" y="1560.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="7.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa26" id="sa94" species="s104">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="25.0" w="70.0" x="1350.0" y="1604.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="13.0" y="50.0"/>
      <celldesigner:boxSize height="25.0" width="70.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="7fcccccc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias compartmentAlias="ca1" id="sa95" species="CytoCr">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1374.0" y="1705.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="51.0" y="937.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa96" species="CytoC">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="960.0" y="1705.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa97" species="Apaf">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1079.0" y="1588.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa27" id="sa98" species="s109">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1028.0" y="1446.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="6.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias complexSpeciesAlias="csa27" id="sa99" species="s110">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1028.0" y="1490.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="3.0" y="50.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa100" species="Apaf_hash">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="958.0" y="1308.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="11.0" y="93.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
  <celldesigner:speciesAlias id="sa101" species="pC9">
    <celldesigner:activity>inactive</celldesigner:activity>
    <celldesigner:bounds h="40.0" w="80.0" x="1165.0" y="1308.0"/>
    <celldesigner:view state="usual"/>
    <celldesigner:usualView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="40.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="ffccffcc" scheme="Color"/>
    </celldesigner:usualView>
    <celldesigner:briefView>
      <celldesigner:innerPosition x="0.0" y="0.0"/>
      <celldesigner:boxSize height="60.0" width="80.0"/>
      <celldesigner:singleLine width="1.0"/>
      <celldesigner:paint color="3fff0000" scheme="Color"/>
    </celldesigner:briefView>
  </celldesigner:speciesAlias>
</celldesigner:listOfSpeciesAliases><celldesigner:listOfGroups xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/><celldesigner:listOfProteins xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:protein id="pr1" name="L" type="GENERIC"/>
  <celldesigner:protein id="pr2" name="R" type="RECEPTOR"/>
  <celldesigner:protein id="pr5" name="flip" type="GENERIC"/>
  <celldesigner:protein id="pr6" name="pC8" type="GENERIC"/>
  <celldesigner:protein id="pr7" name="C8" type="GENERIC"/>
  <celldesigner:protein id="pr8" name="C6" type="GENERIC"/>
  <celldesigner:protein id="pr9" name="BAR" type="GENERIC"/>
  <celldesigner:protein id="pr10" name="pC3" type="GENERIC"/>
  <celldesigner:protein id="pr11" name="C3" type="GENERIC"/>
  <celldesigner:protein id="pr12" name="Bid" type="GENERIC"/>
  <celldesigner:protein id="pr13" name="tBid" type="GENERIC"/>
  <celldesigner:protein id="pr16" name="pC6" type="GENERIC"/>
  <celldesigner:protein id="pr17" name="XIAP" type="GENERIC"/>
  <celldesigner:protein id="pr18" name="C3_Ub" type="GENERIC"/>
  <celldesigner:protein id="pr19" name="PARP" type="GENERIC"/>
  <celldesigner:protein id="pr20" name="CPARP" type="GENERIC"/>
  <celldesigner:protein id="pr21" name="Smac" type="GENERIC"/>
  <celldesigner:protein id="pr22" name="Bcl2c" type="GENERIC"/>
  <celldesigner:protein id="pr23" name="Bax" type="GENERIC"/>
  <celldesigner:protein id="pr24" name="Bax#" type="GENERIC"/>
  <celldesigner:protein id="pr25" name="Baxm" type="GENERIC"/>
  <celldesigner:protein id="pr26" name="Bcl2" type="GENERIC"/>
  <celldesigner:protein id="pr4" name="aR" type="RECEPTOR"/>
  <celldesigner:protein id="pr14" name="pC9" type="GENERIC"/>
  <celldesigner:protein id="pr15" name="Apaf#" type="GENERIC"/>
  <celldesigner:protein id="pr3" name="Smacm" type="GENERIC"/>
  <celldesigner:protein id="pr27" name="Smacr" type="GENERIC"/>
  <celldesigner:protein id="pr28" name="CytoCm" type="GENERIC"/>
  <celldesigner:protein id="pr29" name="CytoCr" type="GENERIC"/>
  <celldesigner:protein id="pr30" name="CytoC" type="GENERIC"/>
  <celldesigner:protein id="pr31" name="Apaf" type="GENERIC"/>
</celldesigner:listOfProteins><celldesigner:listOfGenes xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/><celldesigner:listOfRNAs xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/><celldesigner:listOfAntisenseRNAs xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/><celldesigner:listOfLayers xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/><celldesigner:listOfBlockDiagrams xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner"/>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="mitochondrion" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005739"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
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
                : L = 3000 correspond to 50 ng/ml SuperKiller TRAIL            <br/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
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
                : for experiments without siRNA R = 200            <br/></p>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
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
      <Metabolite key="Metabolite_3" name="proC8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_4998.1"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q14790"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_4185"/>
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42574"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omim/601997"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3224"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55957"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_385"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55957"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55212"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5246"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P98170"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42574"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62988"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P09874"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P09874"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5375"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3598"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P50591"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5556"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14763"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
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
      <Metabolite key="Metabolite_30" name="C8:Bid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10415"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5499"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_5375"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9NR28"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_14114"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_3942"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P99999"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14727"/>
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
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_54">
</rdf:Description>
</rdf:RDF>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P55211"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07812"/>
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kc3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kc6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kc8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kc9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kc10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kc12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="k_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="k_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kc19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="k_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kc21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="k_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="k23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="k_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kc23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="k_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="k25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="k27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="k_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="k_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kc7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="pC3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>)/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="degraded C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="cPARP fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>/(&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>)
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
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C8:pC3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[pC3:Apop],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[C3:pC6],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP:C3],Reference=Concentration>+&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="free C3 fraction" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3],Reference=Concentration>/&lt;CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3],Reference=Value>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045569"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa1" species="L">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa2" species="R">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa1" species="L_R">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.24184235262521836,0.45404189606552947</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7498" name="k1" value="1"/>
          <Constant key="Parameter_7496" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa1" species="L_R">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7502" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa3" species="flip">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa3" species="flip_R_hash">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.021030002804000247,0.551359940181325</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7497" name="k1" value="1"/>
          <Constant key="Parameter_7500" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_961"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa4" species="pC8">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa4" species="R_hash_pC8">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.32840302000088073,0.26279305929621977</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7501" name="k1" value="1"/>
          <Constant key="Parameter_8513" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_961"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa4" species="R_hash_pC8">
    <celldesigner:linkAnchor position="ESE"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="NNE"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="csa2" species="R_hash">
    <celldesigner:linkAnchor position="SSE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">6.94258373205718,5.8564593301434655</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa6" species="C6">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa4" species="pC8">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa5" species="C6_pC8">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5739051489343293,-0.0024209934719618964</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7504" name="k1" value="1"/>
          <Constant key="Parameter_8514" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa6" species="C6">
    <celldesigner:linkAnchor position="SSE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="1" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="1" tShapeIndex="0">0.1983081832126894,-0.38512128346031865 -1.0277008310249305,-1.2673130193905848</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa7" species="BAR">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa6" species="BAR_C8">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.3708609271523198,0.2582781456953589</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8511" name="k1" value="1"/>
          <Constant key="Parameter_8512" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa8" species="pC3">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="SW"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa7" species="C8_pC3">
    <celldesigner:linkAnchor position="ESE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.0674840470361584,0.5570494040213523</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7507" name="k1" value="1"/>
          <Constant key="Parameter_7505" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.4.22.61"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa7" species="C8_pC3">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.8059224343118494,0.20378494422924298</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa5" species="C8">
    <celldesigner:linkAnchor position="NE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa10" species="Bid">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa10" species="C8_Bid">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5234120183536923,0.4740449997235867</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7508" name="k1" value="1"/>
          <Constant key="Parameter_7620" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.4.22.61"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa10" species="C8_Bid">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa5" species="C8">
    <celldesigner:linkAnchor position="ENE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.6488968191891522,0.0018820883848253978</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa8" species="pC3">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa8" species="pC3_Apop">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4972559163841017,0.014262243506833805</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7509" name="k1" value="1"/>
          <Constant key="Parameter_7623" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa8" species="pC3_Apop">
    <celldesigner:linkAnchor position="ESE"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="ENE"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="WSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5006545726575657,0.49008789975687295</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="WSW"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa12" species="pC6">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa11" species="C3_pC6">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.07876764304143968,0.3173470936409184</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7506" name="k1" value="1"/>
          <Constant key="Parameter_7621" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa11" species="C3_pC6">
    <celldesigner:linkAnchor position="ENE"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="NW"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa6" species="C6">
    <celldesigner:linkAnchor position="SSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.28430404859185443,0.02968997588602229</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa12" species="XIAP_C3">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4894653255690853,-0.007305452620432362</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8165" name="k1" value="1"/>
          <Constant key="Parameter_8163" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa12" species="XIAP_C3">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa14" species="C3_Ub">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="1" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="1" tShapeIndex="0">0.3341165377851305,0.4640669986012984 0.6113748092897122,-0.003051364638047893</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7513" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa15" species="PARP">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa9" species="C3">
    <celldesigner:linkAnchor position="SSW"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa13" species="PARP_C3">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.274371859296483,0.26130653266331905</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7529" name="k1" value="1"/>
          <Constant key="Parameter_7515" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa13" species="PARP_C3">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa16" species="CPARP">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa9" species="C3">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5151336656094241,-0.003942002718622106</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="NE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa14" species="Apop_XIAP">
    <celldesigner:linkAnchor position="SE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">27.312133072407136,-65.13502935420763</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7524" name="k1" value="1"/>
          <Constant key="Parameter_8162" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa13" species="XIAP">
    <celldesigner:linkAnchor position="SE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa17" species="Smac">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa15" species="Smac_XIAP">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5387742640442239,0.3732243861678852</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7511" name="k1" value="1"/>
          <Constant key="Parameter_7522" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="NE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa18" species="Bcl2c">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa16" species="Bcl2c_tBid">
    <celldesigner:linkAnchor position="WSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.2551805802249838,0.35563449773041356</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8316" name="k1" value="1"/>
          <Constant key="Parameter_7514" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="SE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa19" species="Bax">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa17" species="Bax_tBid">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">-0.33134920634920206,0.48814611314611156</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8319" name="k1" value="1"/>
          <Constant key="Parameter_7519" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa17" species="Bax_tBid">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa11" species="tBid">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa20" species="Bax_hash">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.4495412844036686,0.5504587155963316</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">TRANSPORT</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa20" species="Bax_hash">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7518" name="k13" value="1"/>
          <Constant key="Parameter_7521" name="k_13" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="re27" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa18" species="Baxm_Bcl2">
    <celldesigner:linkAnchor position="WSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.14364640883977842,0.31491712707181774</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7520" name="k14" value="1"/>
          <Constant key="Parameter_8161" name="k_14" value="1"/>
          <Constant key="Parameter_7525" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="re29" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa21" species="Baxm">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa65" species="Baxm">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.005917159763312085,0.42603550295858206</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7517" name="k15" value="1"/>
          <Constant key="Parameter_7516" name="k_15" value="1"/>
          <Constant key="Parameter_8607" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="re30" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa20" species="Bax2">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.004380422879288304,0.46432482520427776</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7528" name="k17" value="1"/>
          <Constant key="Parameter_7526" name="k_17" value="1"/>
          <Constant key="Parameter_8455" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="re31" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="SSW"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa19" species="Bax2">
    <celldesigner:linkAnchor position="ENE"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa22" species="Bax2_Bcl2">
    <celldesigner:linkAnchor position="WNW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.37578915108795674,0.1912963530493368</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8606" name="k16" value="1"/>
          <Constant key="Parameter_8453" name="k_16" value="1"/>
          <Constant key="Parameter_8452" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="re32" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa22" species="Bcl2">
    <celldesigner:linkAnchor position="SSE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa23" species="Bax4_Bcl2">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5481727574750828,0.45182724252491724</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8610" name="k18" value="1"/>
          <Constant key="Parameter_8608" name="k_18" value="1"/>
          <Constant key="Parameter_7527" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="re33" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa21" species="Bax4">
    <celldesigner:linkAnchor position="SSE"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa80" species="M">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa24" species="Bax4_M">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.12172462392498495,0.39474214053556267</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8609" name="k19" value="1"/>
          <Constant key="Parameter_8454" name="k_19" value="1"/>
          <Constant key="Parameter_8318" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="re34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa24" species="Bax4_M">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa87" species="Smacm">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa25" species="M_hash_Smacm">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.513208890295024,0.4710907221387357</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_8451" name="k21" value="1"/>
          <Constant key="Parameter_8317" name="k_21" value="1"/>
          <Constant key="Parameter_7530" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="re36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa25" species="M_hash_Smacm">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa90" species="Smacr">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5796917261381083,0.4082184638446229</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7533" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa90" species="Smacr">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa17" species="Smac">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7534" name="k26" value="1"/>
          <Constant key="Parameter_7532" name="k_26" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="re38" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa91" species="CytoCm">
    <celldesigner:linkAnchor position="S"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa26" species="M_hash_CytoCm">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.41064754015557536,0.33356904737852044</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7531" name="k20" value="1"/>
          <Constant key="Parameter_7536" name="k_20" value="1"/>
          <Constant key="Parameter_7538" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="re39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa26" species="M_hash_CytoCm">
    <celldesigner:linkAnchor position="SE"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa95" species="CytoCr">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa86" species="M_hash">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.2201376449514445,0.3327990949373043</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7539" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">STATE_TRANSITION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa95" species="CytoCr">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct" rectangleIndex="0">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7537" name="k22" value="1"/>
          <Constant key="Parameter_7535" name="k_22" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="re41" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="N"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa97" species="Apaf">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa27" species="CytoC_Apaf">
    <celldesigner:linkAnchor position="SSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.13954392329619125,0.43962166364343247</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7542" name="k1" value="1"/>
          <Constant key="Parameter_7541" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">DISSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="csa27" species="CytoC_Apaf">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="sa96" species="CytoC">
    <celldesigner:linkAnchor position="NNW"/>
  </celldesigner:baseProduct>
  <celldesigner:baseProduct alias="sa100" species="Apaf_hash">
    <celldesigner:linkAnchor position="SSW"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.5323814380418144,0.7256866030450926</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:reactionType xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">HETERODIMER_ASSOCIATION</celldesigner:reactionType><celldesigner:baseReactants xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseReactant alias="sa100" species="Apaf_hash">
    <celldesigner:linkAnchor position="E"/>
  </celldesigner:baseReactant>
  <celldesigner:baseReactant alias="sa101" species="pC9">
    <celldesigner:linkAnchor position="W"/>
  </celldesigner:baseReactant>
</celldesigner:baseReactants><celldesigner:baseProducts xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:baseProduct alias="csa9" species="Apop">
    <celldesigner:linkAnchor position="SSE"/>
  </celldesigner:baseProduct>
</celldesigner:baseProducts><celldesigner:connectScheme xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" connectPolicy="direct">
  <celldesigner:listOfLineDirection>
    <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
    <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
  </celldesigner:listOfLineDirection>
</celldesigner:connectScheme><celldesigner:editPoints xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" num0="0" num1="0" num2="0" tShapeIndex="0">0.45410628019323607,0.0</celldesigner:editPoints><celldesigner:line xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner" color="ff000000" width="1.0"/>
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
          <Constant key="Parameter_7543" name="k1" value="1"/>
          <Constant key="Parameter_7544" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell]">
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
    </ListOfReactions>
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
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC8]" value="1.2044281519999999e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[BAR]" value="6.0221407599999996e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC3]" value="6.0221407599999996e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[casp3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bid]" value="2.4088563039999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[tBid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC6]" value="6.0221407599999996e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[XIAP]" value="6.0221407599999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Ub C3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[PARP]" value="6.0221407600000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cPARP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Smac]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[cytosolic Bcl-2]" value="1.2044281519999999e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax]" value="6.0221407599999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Bax#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bcl-2]" value="1.2044281519999999e+28" type="Species" simulationType="reactions"/>
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
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac_m]" value="6.0221407599999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:Smac_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Smac released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC_m]" value="3.0110703800000001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[M#:CytoC_m]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[CytoC released]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf]" value="6.0221407599999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[CytoC:Apaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[Apaf#]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[cell],Vector=Metabolites[proC9]" value="6.0221407599999998e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Baxm]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2]" value="0" type="Species" simulationType="reactions"/>
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
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[total Caspase 3]" value="10000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[free C3 fraction]" value="0" type="ModelValue" simulationType="assignment"/>
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
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 6.0221407599999998e+28 0 0 0 0 1.2044281519999999e+28 0 0 0 6.0221407599999996e+27 0 0 0 1.2044281519999999e+28 0 0 0 0 0 0 0 0 0 0 0 6.0221407600000001e+29 6.0221407599999998e+28 0 0 6.0221407599999998e+28 6.0221407599999998e+28 0 0 0 0 3.0110703800000001e+29 6.0221407599999996e+27 0 0 2.4088563039999998e+28 0 3.0110703800000001e+29 6.0221407599999996e+26 1.8066422279999999e+27 0 0 1.204428152e+26 6.0221407599999998e+28 0 1.2044281519999999e+28 6.0221407599999999e+25 0 1 0 0 0 10000 0 1 1 3.9999999999999998e-07 0.001 1.0000000000000001e-05 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 1 2.9999999999999997e-08 0.001 1.9999999999999999e-06 0.001 0.10000000000000001 9.9999999999999995e-07 0.01 1 9.9999999999999995e-08 0.001 1 9.9999999999999995e-07 0.001 9.9999999999999995e-08 0.001 1 0.01 0.01 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 9.9999999999999995e-07 0.001 1 1.9999999999999999e-06 0.001 10 1.9999999999999999e-06 0.001 10 0.01 0.01 4.9999999999999998e-07 0.001 1 4.9999999999999998e-08 0.001 5.0000000000000001e-09 0.001 1 0.01 0.01 1.9999999999999999e-06 0.001 6.9999999999999999e-06 0.001 1 0.070000000000000007 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100000"/>
        <Parameter name="StepSize" type="float" value="0.29999999999999999"/>
        <Parameter name="Duration" type="float" value="30000"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Compartments[mitochondrion],Vector=Metabolites[Bax2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[pC3 fraction]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
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
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Albeck2008_extrinsic_apoptosis,Vector=Values[free C3 fraction],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000220.xml">
    <SBMLMap SBMLid="Apaf" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="Apaf_hash" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Apop" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Apop_XIAP" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="BAR" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="BAR_C8" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Bax" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Bax2" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Bax2_Bcl2" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Bax4" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Bax4_Bcl2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Bax4_M" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="Bax_hash" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Bax_tBid" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Baxm" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="Baxm_Bcl2" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Bcl2" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Bcl2c" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Bcl2c_tBid" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="Bid" COPASIkey="Metabolite_9"/>
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
    <SBMLMap SBMLid="CytoC" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="CytoC_Apaf" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="CytoCm" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="CytoCr" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="L" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="L_R" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="M_hash" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="M_hash_CytoCm" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="M_hash_Smacm" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="PARP" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PARP_C3" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="R_hash" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="R_hash_pC8" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Smac" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Smac_XIAP" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Smacm" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Smacr" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="XIAP" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="XIAP_C3" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="cPARP_frac" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="fC3_fract" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="flip" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="flip_R_hash" COPASIkey="Metabolite_23"/>
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
    <SBMLMap SBMLid="pC3" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="pC3_Apop" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="pC3_frac" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="pC6" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="pC8" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="pC9" COPASIkey="Metabolite_55"/>
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
    <SBMLMap SBMLid="tBid" COPASIkey="Metabolite_10"/>
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
