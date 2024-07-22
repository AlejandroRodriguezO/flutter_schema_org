import 'package:flutter_schema_org/src/schema_serializable.dart';
import 'package:flutter_schema_org/src/utils.dart';
import 'package:flutter_schema_org/schemas/medical_observational_study_design.dart';
import 'package:flutter_schema_org/schemas/medical_condition.dart';
import 'package:flutter_schema_org/schemas/organization.dart';
import 'package:flutter_schema_org/schemas/person.dart';
import 'package:flutter_schema_org/schemas/event_status_type.dart';
import 'package:flutter_schema_org/schemas/medical_study_status.dart';
import 'package:flutter_schema_org/schemas/administrative_area.dart';
import 'package:flutter_schema_org/schemas/medical_entity.dart';
import 'package:flutter_schema_org/schemas/medical_code.dart';
import 'package:flutter_schema_org/schemas/grant.dart';
import 'package:flutter_schema_org/schemas/medical_guideline.dart';
import 'package:flutter_schema_org/schemas/drug_legal_status.dart';
import 'package:flutter_schema_org/schemas/medical_enumeration.dart';
import 'package:flutter_schema_org/schemas/medicine_system.dart';
import 'package:flutter_schema_org/schemas/medical_specialty.dart';
import 'package:flutter_schema_org/schemas/medical_study.dart';
import 'package:flutter_schema_org/schemas/text_object.dart';
import 'package:flutter_schema_org/schemas/property_value.dart';
import 'package:flutter_schema_org/schemas/image_object.dart';
import 'package:flutter_schema_org/schemas/creative_work.dart';
import 'package:flutter_schema_org/schemas/action.dart';
import 'package:flutter_schema_org/schemas/event.dart';

/// An observational study is a type of medical study that attempts to infer
/// the possible effect of a treatment through observation of a cohort of
/// subjects over a period of time. In an observational study, the assignment
/// of subjects into treatment groups versus control groups is outside the
/// control of the investigator. This is in contrast with controlled studies,
/// such as the randomized controlled trials represented by MedicalTrial,
/// where each subject is randomly assigned to a treatment group or a control
/// group before the start of the treatment.
/// See https://schema.org/MedicalObservationalStudy
class SchemaMedicalObservationalStudy implements SchemaSerializable {
  /// Specifics about the observational study design (enumerated).
  SchemaMedicalObservationalStudyDesign? studyDesign;

  /// Specifying the health condition(s) of a patient, medical study, or other
  /// target audience.
  SchemaMedicalCondition? healthCondition;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

  /// The location in which the study is taking/took place.
  SchemaAdministrativeArea? studyLocation;

  /// A subject of the study, i.e. one of the medical conditions, therapies,
  /// devices, drugs, etc. investigated by the study.
  SchemaMedicalEntity? studySubject;

  /// A medical code for the entity, taken from a controlled vocabulary or
  /// ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
  SchemaMedicalCode? code;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// A medical guideline related to this entity.
  SchemaMedicalGuideline? guideline;

  /// The drug or supplement's legal status, including any controlled substance
  /// schedules that apply.
  ///
  /// Supported types: [SchemaDrugLegalStatus], [SchemaMedicalEnumeration],
  /// [String]
  dynamic legalStatus;

  /// The system of medicine that includes this MedicalEntity, for example
  /// 'evidence-based', 'homeopathic', 'chiropractic', etc.
  SchemaMedicineSystem? medicineSystem;

  /// If applicable, the organization that officially recognizes this entity as
  /// part of its endorsed system of medicine.
  SchemaOrganization? recognizingAuthority;

  /// If applicable, a medical specialty in which this entity is relevant.
  SchemaMedicalSpecialty? relevantSpecialty;

  /// A medical study or trial related to this entity.
  SchemaMedicalStudy? study;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaMedicalObservationalStudy]
  SchemaMedicalObservationalStudy({
    this.studyDesign,
    this.healthCondition,
    this.sponsor,
    this.status,
    this.studyLocation,
    this.studySubject,
    this.code,
    this.funding,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaMedicalObservationalStudy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MedicalObservationalStudy',
        'studyDesign': convertToJsonLd(
            studyDesign, [SchemaMedicalObservationalStudyDesign]),
        'healthCondition':
            convertToJsonLd(healthCondition, [SchemaMedicalCondition]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'status': convertToJsonLd(
            status, [SchemaEventStatusType, SchemaMedicalStudyStatus, String]),
        'studyLocation':
            convertToJsonLd(studyLocation, [SchemaAdministrativeArea]),
        'studySubject': convertToJsonLd(studySubject, [SchemaMedicalEntity]),
        'code': convertToJsonLd(code, [SchemaMedicalCode]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'guideline': convertToJsonLd(guideline, [SchemaMedicalGuideline]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'medicineSystem':
            convertToJsonLd(medicineSystem, [SchemaMedicineSystem]),
        'recognizingAuthority':
            convertToJsonLd(recognizingAuthority, [SchemaOrganization]),
        'relevantSpecialty':
            convertToJsonLd(relevantSpecialty, [SchemaMedicalSpecialty]),
        'study': convertToJsonLd(study, [SchemaMedicalStudy]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
