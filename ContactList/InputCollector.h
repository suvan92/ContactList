//
//  InputCollector.h
//  ContactList
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface InputCollector : NSObject

-(void)displayMenu;
-(NSString*)inputForPrompt:(NSString *)promptString;

@end
