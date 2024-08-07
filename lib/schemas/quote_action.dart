import 'package:flutter_schema_org/src/schema_serializable.dart';
import 'package:flutter_schema_org/src/utils.dart';
import 'package:flutter_schema_org/schemas/price_specification.dart';
import 'package:flutter_schema_org/schemas/action_status_type.dart';
import 'package:flutter_schema_org/schemas/organization.dart';
import 'package:flutter_schema_org/schemas/person.dart';
import 'package:flutter_schema_org/schemas/thing.dart';
import 'package:flutter_schema_org/schemas/place.dart';
import 'package:flutter_schema_org/schemas/postal_address.dart';
import 'package:flutter_schema_org/schemas/virtual_location.dart';
import 'package:flutter_schema_org/schemas/entry_point.dart';
import 'package:flutter_schema_org/schemas/text_object.dart';
import 'package:flutter_schema_org/schemas/property_value.dart';
import 'package:flutter_schema_org/schemas/image_object.dart';
import 'package:flutter_schema_org/schemas/creative_work.dart';
import 'package:flutter_schema_org/schemas/action.dart';
import 'package:flutter_schema_org/schemas/event.dart';

/// An agent quotes/estimates/appraises an object/product/service with a
/// price at a location/store.
/// See https://schema.org/QuoteAction
class SchemaQuoteAction implements SchemaSerializable {
  /// //www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and
  /// Microdata syntax allow the use of a "content=" attribute for publishing
  /// simple machine-readable values alongside more human-friendly
  /// formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode
  /// symbols.
  ///
  /// Supported types: [String], [int]
  dynamic price;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// One or more detailed price specifications, indicating the unit price and
  /// delivery or payment charges.
  SchemaPriceSpecification? priceSpecification;

  /// Indicates the current disposition of the Action.
  SchemaActionStatusType? actionStatus;

  /// The direct performer or driver of the action (animate or inanimate). E.g.
  /// *John* wrote a book.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic agent;

  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  ///
  /// Supported types: [String], [String]
  String? endTime;

  /// For failed actions, more information on the cause of the failure.
  SchemaThing? error;

  /// The object that helped the agent perform the action. E.g. John wrote a
  /// book with *a pen*.
  SchemaThing? instrument;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// The object upon which the action is carried out, whose state is kept
  /// intact or changed. Also known as the semantic roles patient, affected or
  /// undergoer (which change their state) or theme (which doesn't). E.g. John
  /// read *a book*.
  SchemaThing? object;

  /// Other co-agents that participated in the action indirectly. E.g. John
  /// wrote a book with *Steve*.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic participant;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The result produced in the action. E.g. John wrote *a book*.
  SchemaThing? result;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  ///
  /// Supported types: [String], [String]
  String? startTime;

  /// Indicates a target EntryPoint, or url, for an Action.
  ///
  /// Supported types: [SchemaEntryPoint], [String]
  dynamic target;

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

  /// Create a new instance of [SchemaQuoteAction]
  SchemaQuoteAction({
    this.price,
    this.priceCurrency,
    this.priceSpecification,
    this.actionStatus,
    this.agent,
    this.endTime,
    this.error,
    this.instrument,
    this.location,
    this.object,
    this.participant,
    this.provider,
    this.result,
    this.startTime,
    this.target,
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

  /// Serialize [SchemaQuoteAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'QuoteAction',
        'price': convertToJsonLd(price, [String, int]),
        'priceCurrency': convertToJsonLd(priceCurrency, [String]),
        'priceSpecification':
            convertToJsonLd(priceSpecification, [SchemaPriceSpecification]),
        'actionStatus': convertToJsonLd(actionStatus, [SchemaActionStatusType]),
        'agent': convertToJsonLd(agent, [SchemaOrganization, SchemaPerson]),
        'endTime': convertToJsonLd(endTime, [String, String]),
        'error': convertToJsonLd(error, [SchemaThing]),
        'instrument': convertToJsonLd(instrument, [SchemaThing]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'object': convertToJsonLd(object, [SchemaThing]),
        'participant':
            convertToJsonLd(participant, [SchemaOrganization, SchemaPerson]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'result': convertToJsonLd(result, [SchemaThing]),
        'startTime': convertToJsonLd(startTime, [String, String]),
        'target': convertToJsonLd(target, [SchemaEntryPoint, String]),
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
