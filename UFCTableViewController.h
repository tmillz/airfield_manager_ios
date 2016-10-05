//
//  UFCTableViewController.h
//  Airfield-Manager
//
//  Created by Terry on 9/25/14.
//  Copyright (c) 2014 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FastPdfKit/FastPdfKit.h>
#import "REFrostedViewController.h"
#import "QuickLook/Quicklook.h"

@class MFDocumentManager;

@interface UFCTableViewController : UITableViewController <UIDocumentInteractionControllerDelegate, QLPreviewControllerDelegate>

-(IBAction)actionOpenPlainDocument:(id)sender;

@end
