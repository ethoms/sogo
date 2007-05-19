/* SOGoPermissions.m - this file is part of SOGo
 *
 * Copyright (C) 2006 Inverse groupe conseil
 *
 * Author: Wolfgang Sourdeau <wsourdeau@inverse.ca>
 *
 * This file is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This file is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#import "SOGoPermissions.h"

/* General */
NSString *SOGoRole_ObjectCreator = @"ObjectCreator";
NSString *SOGoRole_ObjectEraser = @"ObjectEraser";
NSString *SOGoRole_ObjectViewer = @"ObjectViewer";
NSString *SOGoRole_ObjectReader = @"ObjectReader";
NSString *SOGoRole_ObjectEditor = @"ObjectEditor";
NSString *SOGoRole_FolderCreator = @"FolderCreate";
NSString *SOGoRole_FolderEraser = @"FolderEraser";
NSString *SOGoRole_FolderViewer = @"FolderViewer";
NSString *SOGoRole_FolderReader = @"FolderReader";
NSString *SOGoRole_AuthorizedSubscriber = @"AuthorizedSubscriber";
NSString *SOGoRole_None = @"None";

NSString *SOGoRole_FreeBusy = @"FreeBusy"; /* for the "freebusy" special user
                                            */
NSString *SOGoRole_FreeBusyLookup = @"FreeBusyLookup"; /* for users that have
                                                          access to the
                                                          freebusy information
                                                          from a specific
                                                          calendar */

/* Calendar */
NSString *SOGoCalendarRole_Organizer = @"Organizer";
NSString *SOGoCalendarRole_Participant = @"Participant";

NSString *SOGoCalendarRole_PublicViewer = @"PublicViewer";
NSString *SOGoCalendarRole_PublicDAndTViewer = @"PublicDAndTViewer";
NSString *SOGoCalendarRole_PublicModifier = @"PublicModifier";
NSString *SOGoCalendarRole_PublicResponder = @"PublicResponder";
NSString *SOGoCalendarRole_PrivateViewer = @"PrivateViewer";
NSString *SOGoCalendarRole_PrivateDAndTViewer = @"PrivateDAndTViewer";
NSString *SOGoCalendarRole_PrivateModifier = @"PrivateModifier";
NSString *SOGoCalendarRole_PrivateResponder = @"PrivateResponder";
NSString *SOGoCalendarRole_ConfidentialViewer = @"ConfidentialViewer";
NSString *SOGoCalendarRole_ConfidentialDAndTViewer = @"ConfidentialDAndTViewer";
NSString *SOGoCalendarRole_ConfidentialModifier = @"ConfidentialModifier";
NSString *SOGoCalendarRole_ConfidentialResponder = @"ConfidentialResponder";

NSString *SOGoCalendarRole_ComponentViewer = @"ComponentViewer";
NSString *SOGoCalendarRole_ComponentDAndTViewer = @"ComponentDAndTViewer";
NSString *SOGoCalendarRole_ComponentModifier = @"ComponentModifier";
NSString *SOGoCalendarRole_ComponentResponder = @"ComponentResponder";

NSString *SOGoMailRole_SeenKeeper = @"SeenKeeper";
NSString *SOGoMailRole_Writer = @"Writer";
NSString *SOGoMailRole_Poster = @"Poster";
NSString *SOGoMailRole_Expunger = @"Expunger";
NSString *SOGoMailRole_Administrator = @"Administrator";

/* permissions */
NSString *SOGoPerm_ReadAcls = @"ReadAcls"; /* the equivalent of "read-acl" in
                                              the WebDAV acls spec, which is
                                              currently missing from SOPE */
NSString *SOGoPerm_FreeBusyLookup = @"FreeBusyLookup";

NSString *SOGoCalendarPerm_ViewWholePublicRecords = @"ViewWholePublicRecords";
NSString *SOGoCalendarPerm_ViewDAndTOfPublicRecords = @"ViewDAndTOfPublicRecords";
NSString *SOGoCalendarPerm_ModifyPublicRecords = @"ModifyPublicRecords";
NSString *SOGoCalendarPerm_RespondToPublicRecords = @"RespondToPublicRecords";
NSString *SOGoCalendarPerm_ViewWholePrivateRecords = @"ViewWholePrivateRecords";
NSString *SOGoCalendarPerm_ViewDAndTOfPrivateRecords = @"ViewDAndTOfPrivateRecords";
NSString *SOGoCalendarPerm_ModifyPrivateRecords = @"ModifyPrivateRecords";
NSString *SOGoCalendarPerm_RespondToPrivateRecords = @"RespondToPrivateRecords";
NSString *SOGoCalendarPerm_ViewWholeConfidentialRecords = @"ViewWholeConfidentialRecords";
NSString *SOGoCalendarPerm_ViewDAndTOfConfidentialRecords = @"ViewDAndTOfConfidentialRecords";
NSString *SOGoCalendarPerm_ModifyConfidentialRecords = @"ModifyConfidentialRecords";
NSString *SOGoCalendarPerm_RespondToConfidentialRecords = @"RespondToConfidentialRecords";

NSString *SOGoCalendarPerm_ViewAllComponent = @"ViewAllComponent";
NSString *SOGoCalendarPerm_ViewDAndT = @"ViewDAndT";
NSString *SOGoCalendarPerm_ModifyComponent = @"ModifyComponent";
NSString *SOGoCalendarPerm_RespondToComponent = @"RespondToComponent";

