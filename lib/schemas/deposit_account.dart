import 'package:flutter_schema_org/src/schema_serializable.dart';
import 'package:flutter_schema_org/src/utils.dart';
import 'package:flutter_schema_org/schemas/monetary_amount.dart';
import 'package:flutter_schema_org/schemas/quantitative_value.dart';
import 'package:flutter_schema_org/schemas/aggregate_rating.dart';
import 'package:flutter_schema_org/schemas/administrative_area.dart';
import 'package:flutter_schema_org/schemas/geo_shape.dart';
import 'package:flutter_schema_org/schemas/place.dart';
import 'package:flutter_schema_org/schemas/audience.dart';
import 'package:flutter_schema_org/schemas/service_channel.dart';
import 'package:flutter_schema_org/schemas/brand.dart';
import 'package:flutter_schema_org/schemas/organization.dart';
import 'package:flutter_schema_org/schemas/person.dart';
import 'package:flutter_schema_org/schemas/category_code.dart';
import 'package:flutter_schema_org/schemas/physical_activity_category.dart';
import 'package:flutter_schema_org/schemas/thing.dart';
import 'package:flutter_schema_org/schemas/certification.dart';
import 'package:flutter_schema_org/schemas/offer_catalog.dart';
import 'package:flutter_schema_org/schemas/opening_hours_specification.dart';
import 'package:flutter_schema_org/schemas/product.dart';
import 'package:flutter_schema_org/schemas/service.dart';
import 'package:flutter_schema_org/schemas/image_object.dart';
import 'package:flutter_schema_org/schemas/demand.dart';
import 'package:flutter_schema_org/schemas/offer.dart';
import 'package:flutter_schema_org/schemas/review.dart';
import 'package:flutter_schema_org/schemas/government_benefits_type.dart';
import 'package:flutter_schema_org/schemas/text_object.dart';
import 'package:flutter_schema_org/schemas/property_value.dart';
import 'package:flutter_schema_org/schemas/creative_work.dart';
import 'package:flutter_schema_org/schemas/action.dart';
import 'package:flutter_schema_org/schemas/event.dart';

/// A type of Bank Account with a main purpose of depositing funds to gain
/// interest or other benefits.
/// See https://schema.org/DepositAccount
class SchemaDepositAccount implements SchemaSerializable {
  /// A minimum amount that has to be paid in every month.
  SchemaMonetaryAmount? accountMinimumInflow;

  /// An overdraft is an extension of credit from a lending institution when an
  /// account reaches zero. An overdraft allows the individual to continue
  /// withdrawing money even if the account has no funds in it. Basically the
  /// bank allows people to borrow a set amount of money.
  SchemaMonetaryAmount? accountOverdraftLimit;

  /// The type of a bank account.
  ///
  /// Supported types: [String], [String]
  String? bankAccountType;

  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [int]
  dynamic amount;

  /// The annual rate that is charged for borrowing (or made by investing),
  /// expressed as a single percentage number that represents the actual yearly
  /// cost of funds over the term of a loan. This includes any fees or
  /// additional costs associated with the transaction.
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic annualPercentageRate;

  /// Description of fees, commissions, and other terms applied either to a
  /// class of financial product, or by a financial service organization.
  ///
  /// Supported types: [String], [String]
  String? feesAndCommissionsSpecification;

  /// This is different from the calculated annualPercentageRate.
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic interestRate;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// A means of accessing the service (e.g. a phone bank, a web site, a
  /// location, etc.).
  SchemaServiceChannel? availableChannel;

  /// An award won by or for this item.
  String? award;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [String], [SchemaThing]
  dynamic category;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// A pointer to another, somehow related product (or multiple products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic isRelatedTo;

  /// A pointer to another, functionally similar product (or multiple
  /// products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic isSimilarTo;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

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

  /// The tangible thing generated by the service, e.g. a passport, permit,
  /// etc.
  SchemaThing? produces;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Indicates the mobility of a provided service (e.g. 'static', 'dynamic').
  String? providerMobility;

  /// A review of the item.
  SchemaReview? review;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  dynamic serviceArea;

  /// The audience eligible for this service.
  SchemaAudience? serviceAudience;

  /// The tangible thing generated by the service, e.g. a passport, permit,
  /// etc.
  SchemaThing? serviceOutput;

  /// The type of service being offered, e.g. veterans' benefits, emergency
  /// relief, etc.
  ///
  /// Supported types: [SchemaGovernmentBenefitsType], [String]
  dynamic serviceType;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// Human-readable terms of service documentation.
  ///
  /// Supported types: [String], [String]
  String? termsOfService;

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

  /// Create a new instance of [SchemaDepositAccount]
  SchemaDepositAccount({
    this.accountMinimumInflow,
    this.accountOverdraftLimit,
    this.bankAccountType,
    this.amount,
    this.annualPercentageRate,
    this.feesAndCommissionsSpecification,
    this.interestRate,
    this.aggregateRating,
    this.areaServed,
    this.audience,
    this.availableChannel,
    this.award,
    this.brand,
    this.broker,
    this.category,
    this.hasCertification,
    this.hasOfferCatalog,
    this.hoursAvailable,
    this.isRelatedTo,
    this.isSimilarTo,
    this.logo,
    this.offers,
    this.produces,
    this.provider,
    this.providerMobility,
    this.review,
    this.serviceArea,
    this.serviceAudience,
    this.serviceOutput,
    this.serviceType,
    this.slogan,
    this.termsOfService,
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

  /// Serialize [SchemaDepositAccount] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'DepositAccount',
        'accountMinimumInflow':
            convertToJsonLd(accountMinimumInflow, [SchemaMonetaryAmount]),
        'accountOverdraftLimit':
            convertToJsonLd(accountOverdraftLimit, [SchemaMonetaryAmount]),
        'bankAccountType': convertToJsonLd(bankAccountType, [String, String]),
        'amount': convertToJsonLd(amount, [SchemaMonetaryAmount, int]),
        'annualPercentageRate': convertToJsonLd(
            annualPercentageRate, [SchemaQuantitativeValue, int]),
        'feesAndCommissionsSpecification':
            convertToJsonLd(feesAndCommissionsSpecification, [String, String]),
        'interestRate':
            convertToJsonLd(interestRate, [SchemaQuantitativeValue, int]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'availableChannel':
            convertToJsonLd(availableChannel, [SchemaServiceChannel]),
        'award': convertToJsonLd(award, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          String,
          SchemaThing
        ]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hoursAvailable':
            convertToJsonLd(hoursAvailable, [SchemaOpeningHoursSpecification]),
        'isRelatedTo':
            convertToJsonLd(isRelatedTo, [SchemaProduct, SchemaService]),
        'isSimilarTo':
            convertToJsonLd(isSimilarTo, [SchemaProduct, SchemaService]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'produces': convertToJsonLd(produces, [SchemaThing]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'providerMobility': convertToJsonLd(providerMobility, [String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'serviceAudience': convertToJsonLd(serviceAudience, [SchemaAudience]),
        'serviceOutput': convertToJsonLd(serviceOutput, [SchemaThing]),
        'serviceType': convertToJsonLd(
            serviceType, [SchemaGovernmentBenefitsType, String]),
        'slogan': convertToJsonLd(slogan, [String]),
        'termsOfService': convertToJsonLd(termsOfService, [String, String]),
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
