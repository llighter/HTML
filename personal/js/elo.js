/*
    Declare
    * Declare Objects for elo rating
    * Object Properties
        - name
        - R : currentRate
    * Declare function
        - getRatingDelta(myRating, opponentRating, myGameResult)
            - @param myRating : my currentRate
            - @param opponentRating : opponent's currentRate
            - @param myGameResult : 1 for win, 0 for lose, 0.5 for drew
            - return K(Sa - Ea)
        - getNewRating(myRating, opponentRating, myGameResult)
            - @param myRating : my currentRate
            - @param opponentRating : opponent's currentRate
            - @param myGameResult : 1 for win, 0 for lose, 0.5 for drew
            - return R' = R + K(Sa - Ea)

    TEST
    * 객체로 이루어진 배열을 생성한다.
        - type Restorant
    * initial R value : 1500
    * 대진을 결정하기 위해 random 값을 생성한다.
        - [?]토너먼트가 아니기 때문에 두개의 값만 지속적으로 뽑아주면 된다.
        - [?]대결하는 두팀은 완전 랜덤으로 할것인지? 아니면 property를 추가해서 
            최대 대결값을 제한하는 방법도 있다.
    * 대진 진행되면서 실시간 결과를 표시한다.
 */

function getRatingDelta(myRating, opponentRating, myGameResult) {
    if([0, 0.5, 1].indexOf(myGameResult === -1)) {
        return null;
    }

    var evalAgainstOppon = 1/ (1 + Math.pow(10, (opponentRating - myRating) / 400));

    return Math.round(32 * (myGameResult - evalAgainstOppon));
}

function getNewRating(myRating, opponentRating, myGameResult) {
    return myRating + getRatingDelta(myRating, opponentRating, myGameResult);
}


