const baseApi = "http://localhost:5000/api/checkList/CK_Ligne";

const headers = {
    Accept: "application/json",
    "Content-Type": "application/json",
};

   

export const LigneCk = () => {
    const createLigneCheckList = (createLigneCheckListInputs) => {
        return fetch(baseApi + "/", {
            method: "POST",
            headers,
            body: JSON.stringify(createLigneCheckListInputs),
        }).then((res) => {

            if (!res.ok) return Promise.reject();
            return res.json().then((res) => res);
        });
    };
    const getLigneCK = (currentPage = 1, pageSize = 10) => {
        return fetch(baseApi + `?skip=${pageSize * (currentPage - 1)}&take=${pageSize}`, {
            method: "GET",
            headers: {
                ...headers,
            },
        }).then((res) => {
            if (!res.ok) return Promise.reject();
            return res.json().then((res) => res);
        });
    };
    const removeEnteteCK = (id) => {
        return fetch(baseApi + `/${id}`, {
            method: 'DELETE',
            headers: {
                ...headers
            }
        }).then((res) => {
            if (!res.ok) return Promise.reject();
            return res.json().then((res) => res);
        });
    };
    const updateEnteteCK = (EnteteId, payload) => {
        return fetch(baseApi + `/${EnteteId}`, {
            method: 'PATCH',
            headers: {
                ...headers
            },
            body: JSON.stringify(payload)
        }).then((res) => {
            if (!res.ok) return Promise.reject();
            return res.json().then((res) => res);
        });
    };

    return { createLigneCheckList, getLigneCK,removeEnteteCK,updateEnteteCK };
};
    

