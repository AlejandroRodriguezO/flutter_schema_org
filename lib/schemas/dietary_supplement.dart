import 'package:flutter_schema_org/src/schema_serializable.dart';
import 'package:flutter_schema_org/src/utils.dart';
import 'package:flutter_schema_org/schemas/drug_legal_status.dart';
import 'package:flutter_schema_org/schemas/medical_enumeration.dart';
import 'package:flutter_schema_org/schemas/maximum_dose_schedule.dart';
import 'package:flutter_schema_org/schemas/recommended_dose_schedule.dart';
import 'package:flutter_schema_org/schemas/property_value.dart';
import 'package:flutter_schema_org/schemas/aggregate_rating.dart';
import 'package:flutter_schema_org/schemas/audience.dart';
import 'package:flutter_schema_org/schemas/brand.dart';
import 'package:flutter_schema_org/schemas/organization.dart';
import 'package:flutter_schema_org/schemas/category_code.dart';
import 'package:flutter_schema_org/schemas/physical_activity_category.dart';
import 'package:flutter_schema_org/schemas/thing.dart';
import 'package:flutter_schema_org/schemas/image_object.dart';
import 'package:flutter_schema_org/schemas/country.dart';
import 'package:flutter_schema_org/schemas/distance.dart';
import 'package:flutter_schema_org/schemas/quantitative_value.dart';
import 'package:flutter_schema_org/schemas/grant.dart';
import 'package:flutter_schema_org/schemas/adult_oriented_enumeration.dart';
import 'package:flutter_schema_org/schemas/certification.dart';
import 'package:flutter_schema_org/schemas/energy_consumption_details.dart';
import 'package:flutter_schema_org/schemas/merchant_return_policy.dart';
import 'package:flutter_schema_org/schemas/product.dart';
import 'package:flutter_schema_org/schemas/service.dart';
import 'package:flutter_schema_org/schemas/product_group.dart';
import 'package:flutter_schema_org/schemas/product_model.dart';
import 'package:flutter_schema_org/schemas/offer_item_condition.dart';
import 'package:flutter_schema_org/schemas/defined_term.dart';
import 'package:flutter_schema_org/schemas/item_list.dart';
import 'package:flutter_schema_org/schemas/list_item.dart';
import 'package:flutter_schema_org/schemas/web_content.dart';
import 'package:flutter_schema_org/schemas/demand.dart';
import 'package:flutter_schema_org/schemas/offer.dart';
import 'package:flutter_schema_org/schemas/review.dart';
import 'package:flutter_schema_org/schemas/size_specification.dart';
import 'package:flutter_schema_org/schemas/medical_code.dart';
import 'package:flutter_schema_org/schemas/medical_guideline.dart';
import 'package:flutter_schema_org/schemas/medicine_system.dart';
import 'package:flutter_schema_org/schemas/medical_specialty.dart';
import 'package:flutter_schema_org/schemas/medical_study.dart';
import 'package:flutter_schema_org/schemas/text_object.dart';
import 'package:flutter_schema_org/schemas/creative_work.dart';
import 'package:flutter_schema_org/schemas/action.dart';
import 'package:flutter_schema_org/schemas/event.dart';

/// A product taken by mouth that contains a dietary ingredient intended to
/// supplement the diet. Dietary ingredients may include vitamins, minerals,
/// herbs or other botanicals, amino acids, and substances such as enzymes,
/// organ tissues, glandulars and metabolites.
/// See https://schema.org/DietarySupplement
class SchemaDietarySupplement implements SchemaSerializable {
  /// An active ingredient, typically chemical compounds and/or biologic
  /// substances.
  String? activeIngredient;

  /// True if this item's name is a proprietary/brand name (vs. generic name).
  bool? isProprietary;

  /// The drug or supplement's legal status, including any controlled substance
  /// schedules that apply.
  ///
  /// Supported types: [SchemaDrugLegalStatus], [SchemaMedicalEnumeration],
  /// [String]
  dynamic legalStatus;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  SchemaMaximumDoseSchedule? maximumIntake;

  /// The specific biochemical interaction through which this drug or
  /// supplement produces its pharmacological effect.
  String? mechanismOfAction;

  /// The generic name of this drug or supplement.
  String? nonProprietaryName;

  /// Proprietary name given to the diet plan, typically by its originator or
  /// creator.
  String? proprietaryName;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  SchemaRecommendedDoseSchedule? recommendedIntake;

  /// Any potential safety concern associated with the supplement. May include
  /// interactions with other drugs and foods, pregnancy, breastfeeding, known
  /// adverse reactions, and documented efficacy of the supplement.
  String? safetyConsideration;

  /// Characteristics of the population for which this is intended, or which
  /// typically uses it, e.g. 'adults'.
  String? targetPopulation;

  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// //en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s
  /// article).
  ///
  /// Note also that this is a definition for how to include ASINs in
  /// Schema.org data, and not a definition of ASINs in general - see
  /// documentation from Amazon for authoritative details. ASINs are most
  /// commonly encoded as text strings, but the [asin] property supports
  /// URL/URI as potential values too.
  ///
  /// Supported types: [String], [String]
  String? asin;

  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  String? awards;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [String], [SchemaThing]
  dynamic category;

  /// The color of the product.
  String? color;

  /// A color swatch image, visualizing the color of a [SchemaProduct]. Should
  /// match the textual description specified in the [Schemacolor] property.
  /// This can be a URL or a fully described ImageObject.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic colorSwatch;

  /// The place where the product was assembled.
  String? countryOfAssembly;

  /// The place where the item (typically [SchemaProduct]) was last processed
  /// and tested before importation.
  String? countryOfLastProcessing;

  /// The country of origin of something, including products as well as
  /// creative works such as movie and TV content.
  ///
  /// In the case of TV and movie, this would be the country of the principle
  /// offices of the production company or individual responsible for the
  /// movie. For other kinds of [SchemaCreativeWork] it is difficult to provide
  /// fully general guidance, and properties such as [SchemacontentLocation]
  /// and [SchemalocationCreated] may be more applicable.
  ///
  /// In the case of products, the country of origin of the product. The exact
  /// interpretation of this may vary by context and product type, and cannot
  /// be fully enumerated here.
  SchemaCountry? countryOfOrigin;

  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic depth;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// //en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details.
  /// Left-padding of the gtin values is not required or encouraged. The
  /// [Schemagtin] property generalizes the earlier [Schemagtin8],
  /// [Schemagtin12], [Schemagtin13], and [Schemagtin14] properties.
  ///
  /// Note also that this is a definition for how to include GTINs in
  /// Schema.org data, and not a definition of GTINs in general - see the GS1
  /// documentation for authoritative details.
  ///
  /// Supported types: [String], [String]
  String? gtin;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin12;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin13;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin14;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin8;

  /// Used to tag an item to be intended or suitable for consumption or use by
  /// adults only.
  SchemaAdultOrientedEnumeration? hasAdultConsideration;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// Defines the energy efficiency Category (also known as "class" or
  /// "rating") for a product according to an international energy efficiency
  /// standard.
  SchemaEnergyConsumptionDetails? hasEnergyConsumptionDetails;

  /// A measurement of an item, For example, the inseam of pants, the wheel
  /// size of a bicycle, the gauge of a screw, or the carbon footprint measured
  /// for certification by an authority. Usually an exact measurement, but can
  /// also be a range of measurements for adjustable products, for example
  /// belts and ski bindings.
  SchemaQuantitativeValue? hasMeasurement;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// Indicates the [SchemaproductGroupID] for a [SchemaProductGroup] that this
  /// product [SchemaisVariantOf].
  String? inProductGroupWithID;

  /// A pointer to another product (or multiple products) for which this
  /// product is an accessory or spare part.
  SchemaProduct? isAccessoryOrSparePartFor;

  /// A pointer to another product (or multiple products) for which this
  /// product is a consumable.
  SchemaProduct? isConsumableFor;

  /// Indicates whether this content is family friendly.
  bool? isFamilyFriendly;

  /// A pointer to another, somehow related product (or multiple products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic isRelatedTo;

  /// A pointer to another, functionally similar product (or multiple
  /// products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic isSimilarTo;

  /// Indicates the kind of product that this is a variant of. In the case of
  /// [SchemaProductModel], this is a pointer (from a ProductModel) to a base
  /// product from which this product is a variant. It is safe to infer that
  /// the variant inherits all product features from the base model, unless
  /// defined locally. This is not transitive. In the case of a
  /// [SchemaProductGroup], the group description also serves as a template,
  /// representing a set of Products that vary on explicitly defined, specific
  /// dimensions only (so it defines both a set of variants, as well as which
  /// values distinguish amongst those variants). When used with
  /// [SchemaProductGroup], this property can apply to any [SchemaProduct]
  /// included in the group.
  ///
  /// Supported types: [SchemaProductGroup], [SchemaProductModel]
  dynamic isVariantOf;

  /// A predefined value from OfferItemCondition specifying the condition of
  /// the product or service, or the products or services included in the
  /// offer. Also used for product return policies to specify the condition of
  /// products accepted for returns.
  SchemaOfferItemCondition? itemCondition;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic keywords;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// The manufacturer of the product.
  SchemaOrganization? manufacturer;

  /// A material that something is made from, e.g. leather, wool, cotton,
  /// paper.
  ///
  /// Supported types: [SchemaProduct], [String], [String]
  dynamic material;

  /// //en.wikipedia.org/wiki/Responsive_web_design) in which content can be
  /// flexibly adapted to a wide range of browsing environments. Pages and
  /// sites referenced with the long-established [Schemaurl] property should
  /// ideally also be usable on a wide variety of devices, including mobile
  /// phones. In most cases, it would be pointless and counter productive to
  /// attempt to update all [Schemaurl] markup to use [SchemamobileUrl] for
  /// more mobile-oriented pages. The property is intended for the case when
  /// items (primarily [SchemaProduct] and [SchemaOffer]) have extra URLs
  /// hosted on an additional "mobile site" alongside the main one. It should
  /// not be taken as an endorsement of this publication style.
  String? mobileUrl;

  /// The model of the product. Use with the URL of a ProductModel or a textual
  /// representation of the model identifier. The URL of the ProductModel can
  /// be from an external source. It is recommended to additionally provide
  /// strong product identifiers via the gtin8/gtin13/gtin14 and mpn
  /// properties.
  ///
  /// Supported types: [SchemaProductModel], [String]
  dynamic model;

  /// The Manufacturer Part Number (MPN) of the product, or the product to
  /// which the offer refers.
  String? mpn;

  /// Provides negative considerations regarding something, most typically in
  /// pro/con lists for reviews (alongside [SchemapositiveNotes]). For symmetry
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described. Since product
  /// descriptions tend to emphasise positive claims, it may be relatively
  /// unusual to find [SchemanegativeNotes] used in this way. Nevertheless for
  /// the sake of symmetry, [SchemanegativeNotes] can be used on
  /// [SchemaProduct].
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// negative is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  dynamic negativeNotes;

  /// //en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [SchemaProduct].
  String? nsn;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// A pattern that something has, for example 'polka dot', 'striped',
  /// 'Canadian flag'. Values are typically expressed as text, although links
  /// to controlled value schemes are also supported.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic pattern;

  /// Provides positive considerations regarding something, for example product
  /// highlights or (alongside [SchemanegativeNotes]) pro/con lists for
  /// reviews.
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described.
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// positive is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  dynamic positiveNotes;

  /// 123-456-789" ```.
  String? productID;

  /// The date of production of the item, e.g. vehicle.
  String? productionDate;

  /// The date the item, e.g. vehicle, was purchased by the current owner.
  String? purchaseDate;

  /// The release date of a product or product model. This can be used to
  /// distinguish the exact variant of a product.
  String? releaseDate;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  SchemaReview? reviews;

  /// A standardized size of a product or creative work, specified either
  /// through a simple textual string (for example 'XL', '32Wx34L'), a
  /// QuantitativeValue with a unitCode, or a comprehensive and structured
  /// [SchemaSizeSpecification]; in other cases, the [Schemawidth],
  /// [Schemaheight], [Schemadepth] and [Schemaweight] properties may be more
  /// applicable.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaQuantitativeValue],
  /// [SchemaSizeSpecification], [String]
  dynamic size;

  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
  /// product or service, or the product to which the offer refers.
  String? sku;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// The weight of the product or person.
  SchemaQuantitativeValue? weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic width;

  /// A medical code for the entity, taken from a controlled vocabulary or
  /// ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
  SchemaMedicalCode? code;

  /// A medical guideline related to this entity.
  SchemaMedicalGuideline? guideline;

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

  /// Create a new instance of [SchemaDietarySupplement]
  SchemaDietarySupplement({
    this.activeIngredient,
    this.isProprietary,
    this.legalStatus,
    this.maximumIntake,
    this.mechanismOfAction,
    this.nonProprietaryName,
    this.proprietaryName,
    this.recommendedIntake,
    this.safetyConsideration,
    this.targetPopulation,
    this.additionalProperty,
    this.aggregateRating,
    this.asin,
    this.audience,
    this.award,
    this.awards,
    this.brand,
    this.category,
    this.color,
    this.colorSwatch,
    this.countryOfAssembly,
    this.countryOfLastProcessing,
    this.countryOfOrigin,
    this.depth,
    this.funding,
    this.gtin,
    this.gtin12,
    this.gtin13,
    this.gtin14,
    this.gtin8,
    this.hasAdultConsideration,
    this.hasCertification,
    this.hasEnergyConsumptionDetails,
    this.hasMeasurement,
    this.hasMerchantReturnPolicy,
    this.height,
    this.inProductGroupWithID,
    this.isAccessoryOrSparePartFor,
    this.isConsumableFor,
    this.isFamilyFriendly,
    this.isRelatedTo,
    this.isSimilarTo,
    this.isVariantOf,
    this.itemCondition,
    this.keywords,
    this.logo,
    this.manufacturer,
    this.material,
    this.mobileUrl,
    this.model,
    this.mpn,
    this.negativeNotes,
    this.nsn,
    this.offers,
    this.pattern,
    this.positiveNotes,
    this.productID,
    this.productionDate,
    this.purchaseDate,
    this.releaseDate,
    this.review,
    this.reviews,
    this.size,
    this.sku,
    this.slogan,
    this.weight,
    this.width,
    this.code,
    this.guideline,
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

  /// Serialize [SchemaDietarySupplement] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'DietarySupplement',
        'activeIngredient': convertToJsonLd(activeIngredient, [String]),
        'isProprietary': convertToJsonLd(isProprietary, [bool]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'maximumIntake':
            convertToJsonLd(maximumIntake, [SchemaMaximumDoseSchedule]),
        'mechanismOfAction': convertToJsonLd(mechanismOfAction, [String]),
        'nonProprietaryName': convertToJsonLd(nonProprietaryName, [String]),
        'proprietaryName': convertToJsonLd(proprietaryName, [String]),
        'recommendedIntake':
            convertToJsonLd(recommendedIntake, [SchemaRecommendedDoseSchedule]),
        'safetyConsideration': convertToJsonLd(safetyConsideration, [String]),
        'targetPopulation': convertToJsonLd(targetPopulation, [String]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'asin': convertToJsonLd(asin, [String, String]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'award': convertToJsonLd(award, [String]),
        'awards': convertToJsonLd(awards, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          String,
          SchemaThing
        ]),
        'color': convertToJsonLd(color, [String]),
        'colorSwatch':
            convertToJsonLd(colorSwatch, [SchemaImageObject, String]),
        'countryOfAssembly': convertToJsonLd(countryOfAssembly, [String]),
        'countryOfLastProcessing':
            convertToJsonLd(countryOfLastProcessing, [String]),
        'countryOfOrigin': convertToJsonLd(countryOfOrigin, [SchemaCountry]),
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'gtin': convertToJsonLd(gtin, [String, String]),
        'gtin12': convertToJsonLd(gtin12, [String]),
        'gtin13': convertToJsonLd(gtin13, [String]),
        'gtin14': convertToJsonLd(gtin14, [String]),
        'gtin8': convertToJsonLd(gtin8, [String]),
        'hasAdultConsideration': convertToJsonLd(
            hasAdultConsideration, [SchemaAdultOrientedEnumeration]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasEnergyConsumptionDetails': convertToJsonLd(
            hasEnergyConsumptionDetails, [SchemaEnergyConsumptionDetails]),
        'hasMeasurement':
            convertToJsonLd(hasMeasurement, [SchemaQuantitativeValue]),
        'hasMerchantReturnPolicy': convertToJsonLd(
            hasMerchantReturnPolicy, [SchemaMerchantReturnPolicy]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'inProductGroupWithID': convertToJsonLd(inProductGroupWithID, [String]),
        'isAccessoryOrSparePartFor':
            convertToJsonLd(isAccessoryOrSparePartFor, [SchemaProduct]),
        'isConsumableFor': convertToJsonLd(isConsumableFor, [SchemaProduct]),
        'isFamilyFriendly': convertToJsonLd(isFamilyFriendly, [bool]),
        'isRelatedTo':
            convertToJsonLd(isRelatedTo, [SchemaProduct, SchemaService]),
        'isSimilarTo':
            convertToJsonLd(isSimilarTo, [SchemaProduct, SchemaService]),
        'isVariantOf': convertToJsonLd(
            isVariantOf, [SchemaProductGroup, SchemaProductModel]),
        'itemCondition':
            convertToJsonLd(itemCondition, [SchemaOfferItemCondition]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'manufacturer': convertToJsonLd(manufacturer, [SchemaOrganization]),
        'material': convertToJsonLd(material, [SchemaProduct, String, String]),
        'mobileUrl': convertToJsonLd(mobileUrl, [String]),
        'model': convertToJsonLd(model, [SchemaProductModel, String]),
        'mpn': convertToJsonLd(mpn, [String]),
        'negativeNotes': convertToJsonLd(negativeNotes,
            [SchemaItemList, SchemaListItem, String, SchemaWebContent]),
        'nsn': convertToJsonLd(nsn, [String]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'pattern': convertToJsonLd(pattern, [SchemaDefinedTerm, String]),
        'positiveNotes': convertToJsonLd(positiveNotes,
            [SchemaItemList, SchemaListItem, String, SchemaWebContent]),
        'productID': convertToJsonLd(productID, [String]),
        'productionDate': convertToJsonLd(productionDate, [String]),
        'purchaseDate': convertToJsonLd(purchaseDate, [String]),
        'releaseDate': convertToJsonLd(releaseDate, [String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'size': convertToJsonLd(size, [
          SchemaDefinedTerm,
          SchemaQuantitativeValue,
          SchemaSizeSpecification,
          String
        ]),
        'sku': convertToJsonLd(sku, [String]),
        'slogan': convertToJsonLd(slogan, [String]),
        'weight': convertToJsonLd(weight, [SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
        'code': convertToJsonLd(code, [SchemaMedicalCode]),
        'guideline': convertToJsonLd(guideline, [SchemaMedicalGuideline]),
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
