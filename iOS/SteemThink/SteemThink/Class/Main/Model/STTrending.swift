//
//  STTrending.swift
//  SteemThink
//
//  Created by zhouzhiwei on 2018/2/24.
//  Copyright © 2018年 zijinph. All rights reserved.
//

import UIKit

@objcMembers

class STTrendingBeneficiary: STBaseModel {
    var account : String = ""
    var weight : Int32 = 0

}

@objcMembers

class STTrendingActiveVotes: STBaseModel {
    var voter : String = ""
    var weight : Int32 = 0
    var rshares : Int32 = 0
    var percent : Int32 = 0
    var reputation : String = ""
    var time : String = ""
}

@objcMembers

class STTrending: STBaseModel {
    var id : Int32 = 0
    var author : String = ""
    var permlink : String = ""
    var category : String = ""
    var parent_permlink : String = ""
    var title : String = ""
    var body : String = ""
    var json_metadata : String = ""
    var last_update : String = ""
    var created : String = ""
    var active : String = ""
    var last_payout : String = ""
    var depth : Int32 = 0
    var children : Int32 = 0
    var net_rshares : String = ""
    var abs_rshares : String = ""
    var vote_rshares : String = ""
    var children_abs_rshares : String = ""
    var cashout_time : String = ""
    var max_cashout_time : String = ""
    var total_vote_weight : Int32 = 0
    var reward_weight : Int32 = 0
    var total_payout_value : String = ""
    var curator_payout_value : String = ""
    var author_rewards : Int32 = 0
    var net_votes : Int32 = 0
    var root_author : String = ""
    var root_permlink : String = ""
    var max_accepted_payout : String = ""
    var percent_steem_dollars : Int32 = 0
    var allow_replies : Bool = false
    var allow_votes : Bool = false
    var allow_curation_rewards : Bool = false
    var beneficiaries : [STTrendingBeneficiary]?
    var url : String = ""
    var root_title : String = ""
    var pending_payout_value : String = ""
    var total_pending_payout_value : String = ""
    var active_votes : [STTrendingActiveVotes]?
    var author_reputation : String = ""
    var promoted : String = ""
    var body_length : Int32 = 0
    
    override init(dict : [String : Any]) {
        super.init()
        setValuesForKeys(dict)
    }
}
